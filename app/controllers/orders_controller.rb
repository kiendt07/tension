class OrdersController < ApplicationController
  before_action :authenticate_user!

  def logout
    session[:order_id] = nil
    sign_out :user
    redirect_to root_path
  end

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def cart
    @order = current_order
  end

  def update
    if current_order.in_progress?
      current_order.next_state
      session[:order_id] = nil
      flash.now[:success] = 'Successfull place order!'
      # TODO redirect_to receipt
      if current_order.statuses == 'pending'
        redirect_to cart_path
      else
        redirect_to orders_path
      end
    else
      flash.now[:notice] = 'You cannot do that!'
    end
  end

  def destroy
    if current_order.cancer
      session[:order_id] = nil
      flash[:success] = 'Successfully cancer!'
    else
      flash[:error] = 'Cannot cancer'
    end
    redirect_to products_path
  end
end
