class AddPassingYearInStudentDegrees < ActiveRecord::Migration[7.0]
  def change
    add_column :student_degrees, :passing_year, :date
  end
end
