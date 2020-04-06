class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  #Create product
  def create
   product  = Product.create
   product_params
   redirect_to product
  end

#Edit product
  def edit
    @product = Product.find params[:id]
  end

#Update product
  def update
    product = Product.find params[:id]
    Product.update product_params
    redirect_to product
  end

#Show product
  def show
    @product = Product.find params[:id]
  end

#Delete product
  def destroy
    product = Product.find params[:id]
    Product.destroy
    redirect_to products_path
  end

#Private Methods
  private
   def product_params
     params.require(:product).permit(:item, :price, :image)
   end
end
