class OrderLinesController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_order
    @order_line = @order.order_lines.build order_line_params
    if @order.save
      flash.now[:success] = "Added #{ @order_line.unit.product.name } to cart"
      puts 'OKJLKAJFLKJAKFKLD'
    else
      flash.now[:warning] = 'Cannot add this product to cart!'
    end
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
