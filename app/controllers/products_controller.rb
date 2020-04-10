class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def new
    @product = Product.new
  end

  #Create product
  def create
    product = Product.create product_params
    render json: product
  end

#Edit product
  def edit
    @product = Product.find params[:id]
  end

#Update product
  def update
    product = Product.find params[:id]
    product.update product_params
    render json: product
  end

#Show product
  def show
    @product = Product.find params[:id]
  end

#Delete product
  def destroy
    product = Product.find params[:id]
    product.destroy
    render json: Product
  end

#Private Methods
  private
   def product_params
     params.require(:product).permit(:item, :price, :image)
   end
end
