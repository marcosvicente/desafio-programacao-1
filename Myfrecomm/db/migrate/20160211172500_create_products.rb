class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :purchaser_name
      t.string :item_description
      t.float, :item_price
      t.float :purchase_count
      t.string, :merchant_address
      t.string :merchant_name

      t.timestamps null: false
    end
  end
end
