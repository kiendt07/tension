class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:category]
      @products = @products.where('id = ?', params[:category])
    end
  end

  def show
    @product = Product.find(params[:id])
    @product_unit = @product.product_units.where('size = ? AND color = ?', params[:size], params[:color]).first;
  end
end
