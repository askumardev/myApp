class StudentDegree < ApplicationRecord
  belongs_to :student
  belongs_to :degree
  accepts_nested_attributes_for :degree
end
