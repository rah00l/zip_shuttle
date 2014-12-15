class Route < ActiveRecord::Base
	has_many :locations
	has_many :pickup_route_start_times
	has_many :drop_route_start_times

	has_many :pickup_point_time_details
	has_many :drop_point_time_details
end
