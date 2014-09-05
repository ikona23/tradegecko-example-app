class ProductsController < ApplicationController
  def index
    @products = gecko.Product.where(limit: 50)
  end

  def show
    @product = gecko.Product.find(params[:id])
  end

  def new
  end

  def create
    access_token.post("/products", params: {product: {name: params[:name]}})
    redirect_to root_url
  end
end
