class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @products = Product.all;
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def nano
    @products = Product.where(subCategory: "Nanoparticles")
  end

  def analytics
    @products = Product.where(subCategory: "Analytics")
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: 'Product added successfully'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: 'Product deleted successfully'
  end

  private

  def product_params
    params.require(:product).permit(:name,:category,:photo, :description)
  end

end
