class DogsController < ApplicationController
  def index
    dogs = Dog.all
    render json: dogs
  end

  def create
    dog = Dog.create(name: "Ahu")
    render json: dog
  end
end
