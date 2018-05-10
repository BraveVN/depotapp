class AddProductPriceToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :product_price, :decimal, default: 0
  end
end
