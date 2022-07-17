class Workshop < ApplicationRecord
  validates :name, :description, presence: true
  validates :start_date, :start_time, :end_date, :end_time, presence: true
	validates :total_sits, :registration_fee, presence: true, numericality: true
	validates :end_date, comparison: 
	  { greater_than: :start_date, message: 'cannot be before start_date' }
end
