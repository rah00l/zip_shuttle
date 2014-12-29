class DropRouteStartTime < ActiveRecord::Base
	belongs_to :route

	has_many :drop_point_time_details,dependent: :destroy

	validates :drop_start_time, presence: true
	validates :route_id, presence: true


	def drop_start_time
		read_attribute(:drop_start_time).to_s(:desire)  unless read_attribute(:drop_start_time).nil?
	end
end
