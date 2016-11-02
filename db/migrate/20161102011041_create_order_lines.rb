class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :product_unit_id
      t.string :size
      t.string :color
      t.integer :quantity

      t.timestamps
    end
  end
end
