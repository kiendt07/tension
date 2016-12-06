class Product < ApplicationRecord
  serialize :size_set, Array
  serialize :img_set, Array
  serialize :color_set, Array
  include PgSearch

  belongs_to :brand
  belongs_to :category
  has_many :units

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  # default_scope { where(available: true) }

  pg_search_scope :search,
    against: [:name, :size_set, :color_set]

  def available_unit
    units.order(quantity: :desc).first
  end
end
