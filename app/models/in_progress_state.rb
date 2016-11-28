class InProgressState < State
  def next(order)
    order.set_state PendingState.new
    order.pending!
  end

  def cancer(order)
    order.delete
  end
end
