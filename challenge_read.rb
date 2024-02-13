# Load the Rails environment
require_relative 'ar' # Adjust the path as per your Rails application structure

# Use the Product class to find (any) product from the database.
product = Product.first

# Inspect the Product object you have retrieved.
# You can inspect the object to understand its attributes and associations, if any.

# In your product.rb file, record all the columns that exist in the products table in a comment.

# Columns in the products table:
# id: integer
# name: string
# price: decimal
# stock_quantity: integer
# created_at: datetime
# updated_at: datetime
# category_id: integer (assuming there is a foreign key linking to categories table)

# Based on the columns you find, determine if the products table has an association with any other tables.
# Since there's a column named category_id, it suggests an association with the categories table.

# Use ActiveRecord to find and print out:

# Total number of products
total_products = Product.count
puts "Total number of products: #{total_products}"

# The names of all products above $10 with names that begin with the letter C
products_above_10_c = Product.where("price > ?", 10).where("name LIKE ?", 'C%')
puts "Products above $10 with names starting with 'C':"
products_above_10_c.each { |product| puts product.name }

# Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
low_stock_products_count = Product.where("stock_quantity < ?", 5).count
puts "Total number of products with low stock quantity: #{low_stock_products_count}"
