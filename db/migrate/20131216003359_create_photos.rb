class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

      t.integer :look_id
      t.integer :product_id
      t.attachment :image, null: false

      t.timestamps
    end

    add_index :photos, :look_id
    add_index :photos, :product_id
  end
end
