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
      flash[:success] = "Pedal is in the cart!"
      redirect_to "/carted_products"
    end

  end
  
end

private

def calculate_subtotal(carted_products)
  subtotal = 0
  carted_products.each do |carted_product|
      subtotal += (carted_product.product.price * carted_product.quantity)
  end
  return subtotal
end
def calculate_tax(carted_products)
  tax = 0
  carted_products.each do |carted_product|
      tax += (carted_product.product.tax * carted_product.quantity)
  end
  return tax
end