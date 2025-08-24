class AddDescriptionToProductTable < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :description, :string, null: false, default: ""
  end
end
