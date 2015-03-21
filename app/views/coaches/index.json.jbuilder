json.array!(@coaches) do |coach|
  json.extract! coach, :id, :klass, :model, :year
  json.url coach_url(coach, format: :json)
end
