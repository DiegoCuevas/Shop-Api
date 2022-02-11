class ProductsController < ApplicationController
  before_action :set_products, only: [:show, :update, :destroy]

  def index
    @product = Product.all
    render json: @product
  end

  def search
    @product = Product.search(params[:name])
    render json: @product
  end
  
  def filter_by_category
    @product = Product.order_by_category(params[:category_id])
    render json: @product
  end

  def show
    render json: @product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :url_image, :price, :discount, :category_id)
  end    
end