class PickupPointTimeDetail < ActiveRecord::Base
	belongs_to :route
	belongs_to :location
	belongs_to :pickup_route_start_time
end
