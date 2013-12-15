class Product < ActiveRecord::Base
  attr_accessible :male, :type, :name, :price, :size, :quantity, :color, :material 
  
  validates :name, :price, :type, presence: true 
  
  has_many(
    :look_items,
    class_name: "LookItem",
    foreign_key: :product_id,
    primary_key: :id
  )
  
  has_many(
    :looks,
    through: :look_items,
    source: :look
  )
  
end

 