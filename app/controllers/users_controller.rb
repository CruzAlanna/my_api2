class UsersController < ApplicationController
  skip_before_action :authorize_request, only: [:create, :index]
  def index
    users = User.all 
    render json: users
    if @current_user != nil
      puts "--------------"
      puts @current_user.name
      puts "--------------"
    end
  end

  def create
    user = User.create!(name: params[:name], email: params[:email], password: params[:password], role: params[:role])
    render json: user
  end

  def promote
    user = User.find(params[:id])
    user.update(
      role: params[:role]
    )
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    users = User.all
    render :no_content
  end
end
