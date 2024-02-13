# Load the Rails environment
require_relative 'ar' # Adjust the path as per your Rails application structure

# Create three new products using different methods

# Method 1: Using create
product1 = Product.create(name: "Product 1", price: 20, stock_quantity: 10)

# Method 2: Using new and save
product2 = Product.new(name: "Product 2", price: 15, stock_quantity: 8)
product2.save

# Method 3: Using new with attribute assignment and save!
product3 = Product.new
product3.name = "Product 3"
product3.price = 25
product3.stock_quantity = 3
product3.save!

 # Attempt to create a product with missing required columns
 invalid_product = Product.new
 invalid_product.save
 puts "Errors encountered while saving invalid product:"
 puts invalid_product.errors.full_messages if invalid_product.errors.any?
