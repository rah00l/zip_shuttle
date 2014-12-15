class Location < ActiveRecord::Base
	belongs_to :route

	has_many :pickup_point_time_details
	has_many :drop_point_time_details
end
