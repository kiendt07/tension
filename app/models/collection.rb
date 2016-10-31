class Collection < ApplicationRecord
  serialize :product_set, Array
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
