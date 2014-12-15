class PickupRouteStartTime < ActiveRecord::Base
	belongs_to :route

	has_many :pickup_point_time_details
	
end
