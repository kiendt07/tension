class Order < ApplicationRecord
  belongs_to :payment, optional: true
  belongs_to :status
  belongs_to :user
end
