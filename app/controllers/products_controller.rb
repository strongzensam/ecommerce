class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index,:show, :search]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @categories = Category.all
      if params[:view] == "order_by_price"
        @products = Product.order(:price)
      elsif params[:view] == "order_by_price_desc"
        @products = Product.order(price: :desc)
      elsif params[:category]
        @products = Category.find_by(name: params[:category]).products     
      else
        @products = Product.all
      end
  end
  def new
    @product = Product.new
    @product.images.build
  end
  def create
     @product = Product.new(product_params)
     if @product.save
       flash[:success] = "Product Created"
       redirect_to "/products/#{@product.id}"
     else
      render :new
    end
  end
  def show 
    id = params[:id]
    @product = Product.find_by(id: id)
  end
  def edit
    id = params[:id]
    @product = Product.find_by(id: id)
  end
  def update
    id = params[:id]
    @product = Product.find_by(id: id)
    @product.update(product_params)
    flash[:success] = "Product Updated"

  end
  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.destroy
    flash[:danger] = "Product Destroyed"
    redirect_to "/"
  end
  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :price, :description, :supplier_id,:in_stock, images_attributes: [:image_url])
  end
end
