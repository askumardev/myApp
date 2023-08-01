class Student < ApplicationRecord
  has_many :student_degrees
  has_many :degrees, through: :student_degrees
  accepts_nested_attributes_for :degrees
  accepts_nested_attributes_for :student_degrees#, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :name
end
