class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end
  
  def show
    product = Product.find(params[:id]) #using params makes the methods dynamic
    puts "-----------------------"
    puts "Showing Product id# #{params[:id]}"
    puts "-----------------------"
    render json: product
  end

  def create
    puts "-----------------------"
    puts params
    puts "-----------------------"
    # product = Product.create(name: "candle", price: 10)
    #can do the one below as well but then you have to do the save like during the rails console
    product = Product.new(name: params[:name], price: params[:price])
    product.save
    render json: product
  end
  
  def update
    product = Product.find(params[:id])
    product.update(
      name: params[:name],
      price: params[:price]
    )
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    products = Product.all
    render :no_content
  end
end
