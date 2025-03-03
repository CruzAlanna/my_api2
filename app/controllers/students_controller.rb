class StudentsController < ApplicationController
  skip_before_action :authorize_request, only: [:index] #if you want more to have access do --> [:index, :create], use a comma

  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create(name: params[:name], grade: params[:grade], teacher_id: 1)
    render json: student
  end

  def show
    student = Student.find(params[:id])
    puts "------------------"
    puts @current_user.name   #shows the user that is signed in (login), decoded the JWT token to know that
    puts "------------------"
    render json: student
  end
end
