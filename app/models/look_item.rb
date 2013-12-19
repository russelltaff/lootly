class LookItem < ActiveRecord::Base
  attr_accessible :product_id, :look_id
  validates :product_id, :look_id, presence: true
    
  belongs_to(
    :look,
    class_name: "Look",
    foreign_key: :look_id,
    primary_key: :id
  )
  
  belongs_to(
    :product,
    class_name: "Product",
    foreign_key: :product_id,
    primary_key: :id
  )

 
  
end
