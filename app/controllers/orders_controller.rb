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
      # TODO checkout
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

      Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => (current_order.calculate_total * 100).to_i,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
      checkout_to_next_state
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to cart_path
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

  private

  def checkout_to_next_state
    current_order.next_state
    session[:order_id] = nil
    flash.now[:success] = 'Successfull place order!'
    redirect_to orders_path
  end
end
