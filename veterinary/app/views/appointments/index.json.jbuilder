json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :description, :state, :customer_id
  json.url appointment_url(appointment, format: :json)
end
