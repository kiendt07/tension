class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :unit

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :order, presence: true
  validates :unit, presence: true
end
