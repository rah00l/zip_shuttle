require 'rails_helper'

RSpec.describe DropRouteStartTime, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

 it "has a valid factory" do
    expect(build(:drop_route_start_time)).to be_valid    
end

it "should have many drop_route_start_times" do
	g = DropRouteStartTime.reflect_on_association(:drop_point_time_details)
	expect(g.macro).to eq :has_many	
end

it ":drop_start_time returns time in HH:MM formate" do
	drop_route_start_time = build(:drop_route_start_time)
	expect(drop_route_start_time.drop_start_time).to eq Time.now.strftime("%H:%M")
end	

end
