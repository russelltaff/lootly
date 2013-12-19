class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

      t.integer :look_id
      t.integer :product_id

      t.timestamps
    end

    add_attachment :photos, :image

    add_index :photos, :look_id
    add_index :photos, :product_id
  end
end
