class Status < ApplicationRecord
  INPROGRESS    = create(name: 'In progress', bootstrap_class: 'info')
  PENDING       = create(name: 'Pending', bootstrap_class: 'warning')
  PROCESSING    = create(name: 'Processing', bootstrap_class: 'primary')
  SHIPPING      = create(name: 'Shipping', bootstrap_class: 'success')
  RECEIVED      = create(name: 'Received', bootstrap_class: 'success')
  FULLFILLED    = create(name: 'Fullfilled', bootstrap_class: 'success')
  CANCELED      = create(name: 'Canceled', bootstrap_class: 'danger')
  FAILED        = create(name: 'Failed', bootstrap_class: 'danger')
  has_many :orders
end
