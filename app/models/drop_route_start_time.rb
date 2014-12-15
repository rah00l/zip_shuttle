class DropRouteStartTime < ActiveRecord::Base
	belongs_to :route

	has_many :drop_point_time_details
end
