class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create(name: "John Doe", grade: "10th")
    render json: student
  end
end
