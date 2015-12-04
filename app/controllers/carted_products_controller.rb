class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    @subtotal = calculate_subtotal(@carted_products)
    @tax = calculate_tax(@carted_products)
    @total = @tax + @subtotal
    if @carted_products.empty?
      flash[:danger] = "No Items in your cart!"
      redirect_to "/"
    end

  end
  def create
    @product = Product.find_by(id: params[:product_id])
    carted_product = CartedProduct.new(quantity: params[:quantity], product_id: params[:product_id], status: "carted", user_id: current_user.id)
    if carted_product.save
      session[:cart_count] += 1
      flash[:success] = "Pedal is in the cart!"
      redirect_to "/carted_products"
    end

  end
  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    if carted_product.save
    session[:cart_count] -= 1 
      flash[:warning] = "#{carted_product.quantity} #{carted_product.product.name} removed from cart"
    else
      flash[:danger] = "Product not removed from cart"
    end
    redirect_to "/"
  end
  
end

