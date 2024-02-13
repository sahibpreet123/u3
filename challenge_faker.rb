# Load the Rails environment
require_relative 'ar' # Adjust the path as per your Rails application structure

# Generate 10 new categories with associated products using Faker
10.times do
  category = Category.create(name: Faker::Commerce.department)
  10.times do
    category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 10..100),
      stock_quantity: Faker::Number.between(from: 1, to: 50)
    )
  end
end

puts "Categories and their associated products created successfully."
