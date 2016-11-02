class Status < ApplicationRecord
  INPROGRESS    = self.find(1)
  PENDING       = self.find(2)
  PROCESSING    = self.find(3)
  SHIPPING      = self.find(4)
  RECEIVED      = self.find(5)
  FULLFILLED    = self.find(6)
  CANCELED      = self.find(7)
  FAILED        = self.find(8)

  has_many :orders
end
