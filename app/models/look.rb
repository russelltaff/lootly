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
  
end
