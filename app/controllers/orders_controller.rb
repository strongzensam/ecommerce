class OrdersController < ApplicationController
  def create
    @carted_products = current_user.carted_products.where(status: "carted")
    @subtotal = 0
    @tax = 0
      @carted_products.each do |order_item|
        @subtotal += order_item.product.price
        @tax += order_item.product.tax
      end
    @total = @subtotal + @tax

    @new_order = Order.new(user_id: current_user.id, subtotal: @subtotal, tax: @tax, total: @total)

    if @new_order.save
      @carted_products.each do |order_item|
        order_item.update(status: "purchased", order_id: @new_order.id)
      end
      flash[:success] = "Order Created"
      redirect_to "/orders/#{@new_order.id}"
    end
  end
  def show
    id = params[:id]
    @order = Order.find_by(id: id)
  end
end
