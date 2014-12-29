require 'rails_helper'

RSpec.describe PickupRouteStartTime, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "has a valid factory" do
    expect(build(:pickup_route_start_time)).to be_valid    # debugger
end

it "should have many pickup_point_time_details" do
	g = PickupRouteStartTime.reflect_on_association(:pickup_point_time_details)
	expect(g.macro).to eq :has_many	
end

it ":pickup_start_time returns time in HH:MM formate" do
	pickup_route_start_time = build(:pickup_route_start_time)
	expect(pickup_route_start_time.pickup_start_time).to eq Time.now.strftime("%H:%M")
end	

end
