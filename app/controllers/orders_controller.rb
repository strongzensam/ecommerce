class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price.to_d * params[:qty].to_d
    tax = product.tax.to_d * params[:qty].to_d
    total = subtotal + tax

    @new_order = Order.create(quantity: params[:qty], user_id: current_user.id, product_id: params[:product_id], subtotal: subtotal, tax: tax, total: total)

    flash[:success] = "Order Created"
    redirect_to "/orders/#{@new_order.id}"
  end
  def show
    id = params[:id]
    @order = Order.find_by(id: id)
  end
end
