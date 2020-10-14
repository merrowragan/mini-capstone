class ProductsController < ApplicationController
  def index 
    @products = Product.all
    render "index.html.erb"

    
  end

  def new
    render "new.html.erb"

    
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    

    
    )
    product.save 
    redirect_to "/products/#{product.id}"

    
  end

  def show 
    @product = Product.find(params[:id])
    render "show.html.erb"
    
  end

  def edit 
    @product = Product.find(params[:id])
    render "edit.html.erb"
    
  end

  def update
    product = Product.find(params[:id])
    product.update(

      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    redirect_to "/products/#{product.id}"

    
  end

  
end
