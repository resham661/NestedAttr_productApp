class ProductsController < ApplicationController
  before_action :find_product, only: [:show]

  def index
    @products = Product.price_limit
  end

  def new
      @product = Product.new
      @product.build_owner
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product was created successfully!"
      redirect_to product_path(@product)     
    else
      render 'new'
    end
  end

  def show
  
  end

  private
  
    def product_params
      params.require(:product).permit(:name, :price, owner_attributes: [:owner_name])
    end

    def find_product
      @product = Product.find(params[:id])
    end

end
