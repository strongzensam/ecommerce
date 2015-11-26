class ChangeAllMoneyToDecimal < ActiveRecord::Migration
  def change
    change_column :products, :price, 'numeric USING price::numeric(5,2)'
  end
end
