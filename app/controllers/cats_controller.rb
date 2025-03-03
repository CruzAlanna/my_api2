class CatsController < ApplicationController
  skip_before_action :authorize_request, except: [:destroy]
  def index
    cats = Cat.all
    render json: cats
  end

  def show
    cat = Cat.find(params[:id])
    puts "---"
    puts params[:id]
    puts "---"
    render json: cat
  end

  def create
    cat = Cat.create(name: params[:name])
    render json: cat
  end

  def update
    cat = Cat.find(1)
    cat.update(
      name: "Puddy"
    )
    render json: cat
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    cats = Cat.all
    puts "------------------"
    puts @current_user.name
    puts "------------------"
    render :no_content
  end
end
