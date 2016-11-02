class Unit < ApplicationRecord
  belongs_to :product
  validates :color, presence: true, uniqueness: {scope: :size}
  validates :size, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
end
