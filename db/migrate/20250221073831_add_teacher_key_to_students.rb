class AddTeacherKeyToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :teacher_id, :integer
  end
end
