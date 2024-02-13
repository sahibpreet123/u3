# Load the Rails environment
require_relative 'ar' # Adjust the path as per your Rails application structure

# Find all categories in the database
categories = Category.all

# Display category names and their associated products (name and price)
categories.each do |category|
  puts "Category: #{category.name}" # Output the name of the category

  # Iterate over each product associated with the current category
  category.products.each do |product|
    # Output the name and price of each product, formatted to two decimal places
    puts "  - Product: #{product.name}, Price: $#{'%.2f' % product.price}"
  end
end
