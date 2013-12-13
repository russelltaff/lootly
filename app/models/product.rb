class Product < ActiveRecord::Base
  attr_accessible :male, :type, :name, :price, :size, :quantity, :color, :material 
  
  validates :name, :price, :type, presence: true 
  
end

 