class Api::ProductsController < ApplicationController
  def product_action
    @products = Product.all
    render "all_products.json.jb"
    
  end
end
