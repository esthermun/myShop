class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :quantity
      t.integer :active

      t.timestamps null: false
    end
  end
end
