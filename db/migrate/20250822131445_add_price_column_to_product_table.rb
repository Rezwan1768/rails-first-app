class AddPriceColumnToProductTable < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :price, :integer, default: 1
  end
end
