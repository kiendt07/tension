class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.integer :product_id, index: true, foreign_key: true
      t.string :color
      t.string :size
      t.integer :quantity
      t.boolean :available
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
