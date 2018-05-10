class CopyProductPriceToLineItem < ActiveRecord::Migration[5.2]
  def up
    Product.all.each do |product|
      product.line_items.each do |item| 
        next if product.id != item.product_id
        item.product_price = product.price
        item.save!
      end
    end
  end

  def down
    LineItem.all.each do |item|
      item.product_price = 0
      item.save!
    end
  end
end
