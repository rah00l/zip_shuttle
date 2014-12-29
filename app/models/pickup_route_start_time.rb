class PickupRouteStartTime < ActiveRecord::Base
	belongs_to :route

	has_many :pickup_point_time_details #,:depedent =>  :destroy
	
	validates :pickup_start_time, presence: true
	validates :route_id, presence: true

	def pickup_start_time
		read_attribute(:pickup_start_time).to_s(:desire)  unless read_attribute(:pickup_start_time).nil?
	end

end
