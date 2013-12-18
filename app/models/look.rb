class Look < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true
  
  has_many(
    :look_items,
    class_name: "LookItem",
    foreign_key: :look_id,
    primary_key: :id
  )
  
  has_many(
    :products,
    through: :look_items,
    source: :product
  )

  has_many(
  :photos,
  class_name: "Photo",
  foreign_key: :product_id,
  primary_key: :id
  )
  
  def as_json(options)
    products = self.products
    
    super(options).merge!({products: products})
  end
  
end
