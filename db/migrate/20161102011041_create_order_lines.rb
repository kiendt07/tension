class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :unit_id
      t.integer :quantity

      t.timestamps
    end
  end
end
