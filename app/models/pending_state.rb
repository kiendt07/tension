class PendingState < State
  def next(order)
    order.processing!
    order.change_state
  end

  def cancer(order)
    order.delete
  end
end
