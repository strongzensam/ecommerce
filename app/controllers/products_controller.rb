class ProductsController < ApplicationController

  def index
      @products = Product.all
  end
  def new
  end
  def create
     @new_product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
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
  end
  def update
    id = params[:id]
    @product = Product.find_by(id: id)
    @product.update(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
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
end
