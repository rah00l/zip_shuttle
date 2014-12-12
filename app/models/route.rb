class Route < ActiveRecord::Base
	has_many :locations
	has_many :pickup_route_start_times
end
