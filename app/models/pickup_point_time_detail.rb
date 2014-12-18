class PickupPointTimeDetail < ActiveRecord::Base
	belongs_to :route
	belongs_to :location
	belongs_to :pickup_route_start_time

	def pickup_time
		read_attribute(:pickup_time).to_s(:desire)  unless read_attribute(:pickup_time).nil?
	end

end
