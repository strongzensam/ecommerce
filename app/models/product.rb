class Product < ActiveRecord::Base
  def price_without_dollarsign
    if price.include?("$")
      # p "Boom"
      price_split =  price.split("")
      price_split = price_split[1..-1]
      price_split.join("")
    else
      price
    end
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
end
