json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :email, :preference
  json.url driver_url(driver, format: :json)
end
