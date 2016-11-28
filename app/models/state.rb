class State
end

class PendingState < State
  def next(order)
    puts "Process"
    order.processing!
    order.change_state
  end
end

class InProgressState < State
  def next(order)
    puts "Process"
    order.set_state PendingState.new
    order.pending!
  end
end
