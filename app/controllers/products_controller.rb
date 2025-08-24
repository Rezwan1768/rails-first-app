class ProductsController < ApplicationController
  def index
    @products = Product.all.order(id: "asc")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product = Product.destroy(params[:id])
    if @product.destroyed?
      redirect_to products_path, notice: 'Product was destroyed'
    else 
      render :index
    end
  end


  private
  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
