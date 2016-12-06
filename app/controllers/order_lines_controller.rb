class OrderLinesController < ApplicationController
  # before_action :authenticate_user!

  def create
    if !user_signed_in?
      flash[:error] = 'You must sign in to add a product to the cart'
      redirect_to new_user_session_path
    end
    @order = current_order
    @order_line = @order.order_lines.build order_line_params
    if @order.save
      flash.now[:success] = "Added #{ @order_line.unit.product.name } to cart"
    else
      flash.now[:warning] = 'Cannot add this product to cart!'
    end

    # Reassign order_id in session to current order
    session[:order_id] = @order.id
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  private

  def order_line_params
    params.permit(:unit_id, :quantity)
  end
end
