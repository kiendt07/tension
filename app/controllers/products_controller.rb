class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:category]
      @products = @products.where('id = ?', params[:category])
    end
    @products = @products.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @product = Product.find(params[:id])
    @unit = @product.units.where('size = ? AND color = ?', params[:size], params[:color]).first;
    if params[:size].nil? and params[:color].nil?
      unit = @product.available_unit
      redirect_to product_path(@product, size: unit.size, color: unit.color) if unit.present?
    end
  end

  def search
    @products = Product.search(params[:q]).paginate(:page => params[:page], :per_page => 10)
    render :index, objects: @products
  end
end
