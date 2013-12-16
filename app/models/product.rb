class Product < ActiveRecord::Base
  attr_accessible :male, :product_type, :name, :price, :size, :quantity, :color, :material 
  
  validates :name, :price, :product_type, presence: true 
  
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

  has_many(
    :photos,
    class_name: "Photo",
    foreign_key: :product_id,
    primary_key: :id
  )
  
end

 