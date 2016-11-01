require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "A product's attributes" do
    it 'has brand_id attributes that points to a brand model' do
      b = Brand.create name: 'Zara'
      p = Product.new brand: b
      expect(p.brand).to eq b
    end

    it 'has category_id attributes that points to a category model' do
      c = Category.create name: 'Pants'
      p = Product.new category: c
      expect(p.category).to eq c
    end
  end
end
