json.array!(@products) do |product|
  json.extract! product, :id, :purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name
  json.url product_url(product, format: :json)
end
