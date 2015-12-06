class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :user
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  # accepts_nested_attributes_for :images

  validates :name, :price, :description, presence: true

  has_many :images
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
  def image_first
    Image.find_by(product_id: id).image_url
  end

end
