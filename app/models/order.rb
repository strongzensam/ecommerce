class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :user_id, :product_id presence: true
  validates :quantity, :subtotal, :tax, :total numericality: true
end
