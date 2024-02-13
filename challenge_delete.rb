# Load the Rails environment
require_relative 'ar' # Adjust the path as per your Rails application structure

# Find the product you want to delete
product_to_delete = Product.find_by(name: "Product 1") # Adjust the name as needed

# Check if the product exists
if product_to_delete.nil?
  puts "Product not found!"
else
  # Delete the product from the database
  product_to_delete.destroy
  puts "Product '#{product_to_delete.name}' has been deleted."
end
