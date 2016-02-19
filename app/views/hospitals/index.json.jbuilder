json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :order_number
  json.url hospital_url(hospital, format: :json)
end
