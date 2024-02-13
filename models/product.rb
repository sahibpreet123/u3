# models/product.rb

class Product < ActiveRecord::Base
    # This AR object is linked with the products table.
    
    # A product has a many to one relationship with a category.
    # The products table has a category_id foreign key.
    # In other words, a product belongs to a category.
    belongs_to :category
    # Validations
    validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
    # Associations
    # If there are associations with other tables, define them here
  end