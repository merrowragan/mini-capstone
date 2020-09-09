class Api::ProductsController < ApplicationController
  def product_action
    @products = Product.all
    render "all_products.json.jb"
    
  end

  def product_1_action
    @product = Product.find_by(id: 1)
    render "product_1.json.jb"
  end 

  def product_2_action
    @product = Product.find_by(id: 2)
    render "product_2.json.jb"
    
  end

  def product_3_action
    @product = Product.find_by(id: 3)
    render "product_3.json.jb"
    
  end

end
