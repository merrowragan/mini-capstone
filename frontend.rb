require "http"

response = HTTP.get("http://localhost:3000/api/single_product_path")
product = response.parse
pp product


HTTP.delete("http://localhost:3000/api/products/1")