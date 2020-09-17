class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
    
  end

  def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_path: params[:image_path],
      description: params[:description]
      # quantity: params[:quantity]

    )
    @product.save
    # if @product.save
      render "show.json.jb"
    # else  
    #   render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    # end

  end


  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_path = params[:image_path] || @product.image_path
    @product.description = params[:description] || @product.description
    # @product.quantity = params[:quantity] || @product.quantity
    @product.save

    # if @product.save 
      render "show.json.jb"
    # else 
    #   render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    # end
  end

  def destroy 
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "PRODUCT DESTRUCTION"}
    
  end

end
