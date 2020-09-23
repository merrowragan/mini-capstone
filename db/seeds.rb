# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.create(name: "Really Big Stuff", email: "big_stuff@gmail.com", phone_number: "234-5890")
Supplier.create(name: "Novelties!", email: "whoo_hooo@gmail.com", phone_number: "333-8880")
Supplier.create(name: "Who Would Want This?", email: "garbage@gmail.com", phone_number: "456-9245")
 

Product.create({supplier_id: 1, name: "Whirring Cool Machine", price: 49.20, description: "It's loud! It's cool! It whirrs!!", quantity: 34 } )

Product.create({supplier_id: 1, name: "Welder Machine", price: 302.38,  description: "Be careful, it's hot! Not for children under 5.", quantity: 2})

Product.create({supplier_id: 2, name: "Big Lollipop" , price: 97.00, description: "Years and years of sugary goodness", quantity: 229})

Product.create({supplier_id: 3, name: "Huge Legos", price: 100.00, description: "These Legos are comically large!", quantity: 5067})

Image.create(product_id: 1, url: "https://mk0cnccookbookgxcner.kinstacdn.com/wp-content/uploads/2017/02/GiantLathe.jpg")
Image.create(product_id: 2, url: "https://cdn.thefabricator.com/a/mig-welding-the-basics-and-then-some-man-welding-with-lincoln-power-source.jpg")
Image.create(product_id: 3, url: "https://images-na.ssl-images-amazon.com/images/I/319BnBzSwaL.jpg")
Image.create(product_id: 3, url: "https://images.vat19.com/covers/large/giant-lollipop.jpg")
Image.create(product_id: 4, url: "https://i5.walmartimages.com/asr/dc8f5097-f842-4e71-81f8-d80862c0e0fa_1.dcecb016f2ec61e3b0ce842c01865397.jpeg")
