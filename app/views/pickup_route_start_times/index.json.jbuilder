json.array!(@pickup_route_start_times) do |pickup_route_start_time|
  json.extract! pickup_route_start_time, :id
  json.url pickup_route_start_time_url(pickup_route_start_time, format: :json)
end
