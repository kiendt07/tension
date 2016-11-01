class Product < ApplicationRecord
  serialize :size_set, Array
  serialize :img_set, Array
  serialize :color_set, Array
  belongs_to :brand
  belongs_to :category

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
