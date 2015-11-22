class ProductsController < ApplicationController

  def index
      if params[:view] == "order_by_price"
        @products = Product.order(:price)
      elsif params[:view] == "order_by_price_desc"
        @products = Product.order(price: :desc)
      else
        @products = Product.all
      end
  end
  def new
  end
  def create
     @new_product = Product.create(name: params[:name], price: params[:price], description: params[:description])
     flash[:success] = "Product Created"
     redirect_to "/products/#{@new_product.id}"
  end
  def show 
    id = params[:id]
    @product = Product.find_by(id: id)
  end
  def edit
    id = params[:id]
    @product = Product.find_by(id: id)
    @product[:in_stock] = true
  end
  def update
    id = params[:id]
    @product = Product.find_by(id: id)
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description], in_stock: params[:in_stock])
    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"

  end
  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.destroy
    flash[:danger] = "Product Destroyed"
    redirect_to "/products"
  end
  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
  end
end
