class UsersController < ApplicationController
  skip_before_action :authorize_request, only: [:create]
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
    user = User.create!(name: params[:name], email: params[:email], password: params[:password])
    render json: user
  end
end
