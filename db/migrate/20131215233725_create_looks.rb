class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
