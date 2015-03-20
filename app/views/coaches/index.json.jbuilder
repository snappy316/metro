json.array!(@coaches) do |coach|
  json.extract! coach, :id, :type, :model, :year
  json.url coach_url(coach, format: :json)
end
