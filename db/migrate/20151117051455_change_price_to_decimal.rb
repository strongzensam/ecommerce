class ChangePriceToDecimal < ActiveRecord::Migration
  def change
    change_column :products, :price, 'decimal USING (price::numeric(5,2))'
  end
end
