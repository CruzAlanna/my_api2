class CatsController < ApplicationController
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
    cat = Cat.create(name: "Garfield")
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
    render :no_content
  end
end
