json.array!(@employees) do |employee|
  json.extract! employee, :id, :surname, :birth_year, :position
  json.url employee_url(employee, format: :json)
end
