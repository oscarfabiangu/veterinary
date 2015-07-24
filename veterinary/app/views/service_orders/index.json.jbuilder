json.array!(@service_orders) do |service_order|
  json.extract! service_order, :id, :date, :observation, :price, :detail_order_id
  json.url service_order_url(service_order, format: :json)
end
