class Product < ActiveRecord::Base
  def price_without_dollarsign
      price
  end
  def sale_message
    if price_without_dollarsign.to_i < 2
      return "Discount Item!"
    else
      return "On sale"
    end
  end
  def tax
    tax = price_without_dollarsign.to_i * 0.09
  end
  def total
    total = price_without_dollarsign.to_i + tax
  end
  def stock
    if in_stock == true
      "In Stock"
    else
      "Not in Stock"
    end
  end
end
