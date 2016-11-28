class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id,                                  index: true, foreign_key: true
      t.integer :payment_id
      t.datetime :ordered_at
      t.datetime :required_at
      t.datetime :shipped_at
      t.datetime :paid_at
      t.decimal :discount,   :precision => 12, :scale => 2
      t.integer :statuses,                                  index: true, default: 0
      t.string :shipper_id
      t.decimal :subtotal,   :precision => 12, :scale => 2
      t.decimal :tax,        :precision => 12, :scale => 2
      t.decimal :shipping,   :precision => 12, :scale => 2
      t.decimal :total,      :precision => 12, :scale => 2

      t.timestamps
    end
  end
end
