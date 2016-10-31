class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.string :size_set
      t.string :color_set
      t.string :img_set
      t.integer :brand_id, index: true, foreign_key: true
      t.integer :category_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
