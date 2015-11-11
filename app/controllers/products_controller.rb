class ProductsController < ApplicationController

  def productslist
    @products = Product.all
  end

end
