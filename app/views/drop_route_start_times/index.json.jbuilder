json.array!(@drop_route_start_times) do |drop_route_start_time|
  json.extract! drop_route_start_time, :id
  json.url drop_route_start_time_url(drop_route_start_time, format: :json)
end
