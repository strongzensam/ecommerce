class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal(5,2) :price
      t.text :image
      t.text :description

      t.timestamps null: false
    end
  end
end
