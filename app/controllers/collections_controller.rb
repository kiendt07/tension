class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    @products = @collection.product_set.map{|p| Product.find(p)}
  end
end
