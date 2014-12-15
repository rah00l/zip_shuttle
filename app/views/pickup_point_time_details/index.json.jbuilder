json.array!(@pickup_point_time_details) do |pickup_point_time_detail|
  json.extract! pickup_point_time_detail, :id
  json.url pickup_point_time_detail_url(pickup_point_time_detail, format: :json)
end
