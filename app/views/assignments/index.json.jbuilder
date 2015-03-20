json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :driver_id, :coach_id, :route, :start_time, :end_time
  json.url assignment_url(assignment, format: :json)
end
