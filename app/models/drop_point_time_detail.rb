class DropPointTimeDetail < ActiveRecord::Base
	belongs_to :route
	belongs_to :location
	belongs_to :drop_route_start_time

	def drop_time
		read_attribute(:drop_time).to_s(:desire)  unless read_attribute(:drop_time).nil?
	end

end
