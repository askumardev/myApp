class RenameBookingCol < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :no_if_tickets, :no_of_tickets
  end
end
