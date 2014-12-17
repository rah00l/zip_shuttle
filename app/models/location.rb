class Location < ActiveRecord::Base
	belongs_to :route

	has_many :pickup_point_time_details, dependent: :destroy
	has_many :drop_point_time_details, dependent: :destroy


	ROUTE_TYPES = ["Short", "Medium", "Long"]

	INDUSTRIAL_STOP = ["YES" , "NO" ]

	def industrial_stop
		# debugger
		read_attribute(:industrial_stop).present? ? "YES" : "NO" unless read_attribute(:industrial_stop).nil?
	end

	def industrial_stop=(value)
		# debugger
		puts "..........."
		 value.eql?("YES") ? write_attribute(:industrial_stop, true) : write_attribute(:industrial_stop, false)
	end
end
