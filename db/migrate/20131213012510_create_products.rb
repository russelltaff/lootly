class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :male
      t.string  :type,     null: false
      t.string  :name,     null: false
      t.decimal :price,    null: false
      t.string  :size,     null: false
      t.integer :quantity, null: false 
      t.string  :color,    null: false
      t.string  :material, null: false

      t.timestamps
    end
    
    add_index :products, :type
    add_index :products, :name
    add_index :products, :price
    add_index :products, :size
    add_index :products, :quantity
    add_index :products, :color
    add_index :products, :material

  end
end
