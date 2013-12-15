class CreateLookItems < ActiveRecord::Migration
  def change
    create_table :look_items do |t|
      t.integer :product_id, null: false
      t.integer :look_id, null: false

      t.timestamps
    end
    
    add_index :look_items, :product_id
    add_index :look_items, :look_id
    add_index :look_items, [:look_id, :product_id], unique: true
  end
end
