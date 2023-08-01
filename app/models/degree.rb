class Degree < ApplicationRecord
  has_many :student_degrees
  has_many :students, through: :student_degrees
end
