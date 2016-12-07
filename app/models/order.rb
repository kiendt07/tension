class Order < ApplicationRecord
  belongs_to :payment, optional: true
  belongs_to :user
  has_many :order_lines

  enum statuses: [ :in_progress, :pending, :processing, :shipping, :received, :fullfilled, :canceled, :failed ]

  # Update subtotal after saving.
  before_save :update_subtotal
  def update_subtotal
    self.subtotal = calculate_total
    self.total = self.subtotal
    self.save!
  end

  # Calculate total fee
  def calculate_total
    result = 0;
    order_lines.each do |ol|
      result += ol.unit.price
    end
    self.subtotal = result;
    self.total = result;
    return result
  end

  # Sync status of an order (stored in database) with state attribute (stored in memory)
  after_initialize :change_state
  def change_state
    case statuses
      when 'in_progress'
        set_state InProgressState.new
      when 'pending'
        set_state PendingState.new
    end
  end

  def set_state(order_state)
    @state = order_state
  end

  # The way an order is processed depend on its state
  def next_state
    @state.next(self)
  end

  def cancer
    @state.cancer(self)
  end

  private

  # Create new order like a cart, user can continue shopping, so the status is In progress
  def set_initial_status
    # self.status = Status::INPROGRESS
  end

  def update_subtotal
  end
end
