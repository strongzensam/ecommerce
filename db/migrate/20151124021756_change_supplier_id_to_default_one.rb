class ChangeSupplierIdToDefaultOne < ActiveRecord::Migration
  def change
    change_column :products, :supplier_id, :integer, default: 1
  end
end
