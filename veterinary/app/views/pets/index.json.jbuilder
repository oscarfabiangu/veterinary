json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :race, :age, :weight, :sex, :customer_id
  json.url pet_url(pet, format: :json)
end
