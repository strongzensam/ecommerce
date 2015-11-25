class ImagesController < ApplicationController
  def new
  end

  def create
    new_image = Image.create(url: params[:image], name: params[:name], product_id: Product.last.id)
      redirect_to "/products/#{Product.last.id}"
  end
  def edit
  end
  def update
    id = params[:id]
    new_image = Image.create(url: params[:image], name: params[:name], product_id: Product.last.id)
  end
end
