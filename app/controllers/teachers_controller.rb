class TeachersController < ApplicationController
  def index
    teachers = Teacher.all
    render json: teachers
  end

  def create
    teacher = Teacher.create(name: "Jane Doe", subject: "Philosophy")
    render json: teacher
  end

  def update
    teacher = Teacher.find(params[:id])
    teacher.update(
      name: params[:name],
      subject: params[:subject],
      email: params[:email]
    )
    render json: product
  end
end
