class FixProductColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :type, :product_type
  end
end
