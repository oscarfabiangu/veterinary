json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :type, :cost
  json.url product_url(product, format: :json)
end
