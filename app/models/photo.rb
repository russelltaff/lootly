class Photo < ActiveRecord::Base
  attr_accessible :image, :product_id, :look_id
  validates :image, presence: true
  validate :either_product_or_look

  def either_product_or_look
    if self.look_id > 0 && self.product_id > 0
    errors.add(:product_id, "can't be associated with both")
      return false
    end
  end


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

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }


end
