class Product < ApplicationRecord
  serialize :size_set, Array
  serialize :img_set, Array
  serialize :color_set, Array

  belongs_to :brand
  belongs_to :category

  has_many :units

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  # default_scope { where(available: true) }

  def available_unit
    units.order(quantity: :desc).first
  end
end
