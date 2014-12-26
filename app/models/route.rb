class Route < ActiveRecord::Base
	has_many :locations ,dependent: :destroy
	has_many :pickup_route_start_times,dependent: :destroy
	has_many :drop_route_start_times,dependent: :destroy

	has_many :pickup_point_time_details,dependent: :destroy
	has_many :drop_point_time_details,dependent: :destroy

	validates :name, presence: true
end
