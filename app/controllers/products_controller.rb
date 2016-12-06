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
  end

  def search
    @products = Product.search(params[:q])
    render :index, objects: @products.paginate(:page => params[:page], :per_page => 10)
  end
end
