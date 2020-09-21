class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all

    #if params[:search]
    # @products = Product.title_search(params[:search])

    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end
  
    if params[:discount]
      @products = @products.where("price < ?", 10)
    end
  
    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = @products.order(:price)
      end
    else
      @products = @products.order(:id)
    end
    
    # @products = Product
    #   .title_search(params[:search])
    #   .discounted(params[:discount])
    #   .sorted(params[:sort], params[:sort_order])

    render "index.json.jb"
  end


  def show
    @product = Product.find(params[:id])
    @image = Image.find_by(product_id: params[:id])
    render "show.json.jb"
    
  end

  def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image: params[:image], # unsure of this 
      description: params[:description],
      quantity: params[:quantity]

    )
    @product.save
    if @product.save && @image.save
      render "show.json.jb"
    else  
      render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    end

  end


  def update
    @product = Product.find(params[:id])
    @image = Image.find_by(product_id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price

    @image.url = params[:url] || @image.url

    @product.description = params[:description] || @product.description
    @product.quantity = params[:quantity] || @product.quantity
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    @image.url = params[:url] || @image.url 

    @product.save

    if @product.save && @image.save
      render "show.json.jb"
    else 
      render json: {errors:@product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy 
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "PRODUCT DESTRUCTION"}
    
  end

end
