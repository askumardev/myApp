class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :workshop

  after_create :update_workshop_sit_count

  def update_workshop_sit_count
    workshop.update(remaining_sits: workshop.total_sits - 1)
  end
end
