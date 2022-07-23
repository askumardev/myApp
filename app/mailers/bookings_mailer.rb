class BookingsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bookings_mailer.booking_confirmation.subject
  #
  def booking_confirmation(booking)
    @booking = booking
    @customer = booking.customer
    @workshop = booking.workshop

    mail to: @customer.email, subject: "Booking confirmed for #{@workshop.name}"
  end
end
