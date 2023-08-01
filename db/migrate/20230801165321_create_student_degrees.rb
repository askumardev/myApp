class CreateStudentDegrees < ActiveRecord::Migration[7.0]
  def change
    create_table :student_degrees do |t|
      t.integer :student_id
      t.integer :degree_id

      t.timestamps
    end
  end
end
