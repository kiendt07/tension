class Order < ApplicationRecord
  belongs_to :payment, optional: true
  belongs_to :status
  belongs_to :user

  has_many :order_lines

  before_create :set_initial_status
  before_save :set_initial_status
  before_save :update_subtotal


  def subtotal
  end

  private

  # Create new order like a cart, user can continue shopping, so the status is In progress
  def set_initial_status
    self.status = Status::INPROGRESS
  end

  def update_subtotal
  end
end
