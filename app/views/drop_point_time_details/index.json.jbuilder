json.array!(@drop_point_time_details) do |drop_point_time_detail|
  json.extract! drop_point_time_detail, :id
  json.url drop_point_time_detail_url(drop_point_time_detail, format: :json)
end
