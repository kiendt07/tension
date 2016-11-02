class OrderLinesController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_order
    @order_line = @order.order_lines.build order_line_params
    @order.save
    session[:order_id] = @order.id
  end

  def update
  end

  def destroy
  end

  private

  def order_line_params
    params.permit(:unit_id, :quantity)
  end
end
