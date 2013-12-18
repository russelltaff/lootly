class ProductsController < ApplicationController
  respond_to :json
  
  def index
    @products = Product.all
    respond_with json: @products
  end

  def new

  end

  def show

  end


end
