class BookingsController < ApplicationController
  def create
    @ss = StripeService.new
    @ws = Workshop.find(params[:workshop_id])
    @customer = Customer.find_by(email: params[:email])
    unless @customer.present?
      @customer = Customer.create(customer_params)
    end
    @sc = @ss.find_or_create_customer(@customer)
    @card = @ss.create_stripe_customer_card(params, @sc)
    @amount_to_be_paid = params[:no_of_tickets].to_i * @ws.registration_fee
    @charge = @ss.create_stripe_charge(@amount_to_be_paid, @sc.id, @card.id, @ws)
    puts "****** Strp actions created *******"
    @booking = @ws.bookings.create(
      customer_id: @customer.id,
      stripe_transaction_id: @charge.id,
      no_of_tickets: params[:no_of_tickets].to_i,
      amount_paid: @amount_to_be_paid
    )
    puts "****** Booking created *******"
    BookingsMailer.booking_confirmation(@booking).deliver_now
    puts "****** BookingMailer created *******"
    redirect_to workshop_path(@ws), notice: 'Tickets booked successfully.'
  rescue Stripe::StripeError => error
    redirect_to workshop_path(@ws), alert: "#{error.message}"
  end

  private

  def customer_params
    params.permit(:full_name,:contact_number,:email)
  end

  def card_params
    params.permit(:exp_year,:exp_month,:cvv,:card_number,:email)
  end
end
