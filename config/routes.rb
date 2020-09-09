Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/all_products_path" => "products#product_action"
    get "/mop_product_path" => "products#product_1_action"
    get "/orbiter_product_path" => "products#product_2_action"
    get "/welder_product_path" => "products#product_3_action"

  
  end


end
