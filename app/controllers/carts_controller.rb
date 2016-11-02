class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lines = current_order.order_lines
  end
end
