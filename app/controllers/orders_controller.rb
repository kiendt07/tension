class OrdersController < ApplicationController
  before_action :authenticate_user!

  def logout
    session[:order_id] = nil
    sign_out :user
    redirect_to root_path
  end

  def cart
    @order = current_order
  end

  def update
    current_order.next_state
    redirect_to cart_path
  end
end
