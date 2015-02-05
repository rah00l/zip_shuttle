require 'rails_helper'

RSpec.describe Location, :type => :model do
  it "has a valid factory" do
    expect(build(:location)).to be_valid
  end

  it "should have many pickup_point_time_details" do
    g = Location.reflect_on_association(:pickup_point_time_details)
    expect(g.macro).to eq :has_many
  end

  it "should have many drop_point_time_details" do
    g = Location.reflect_on_association(:drop_point_time_details)
    expect(g.macro).to eq :has_many
  end

  it "#industrial_stop: returns a 'YES' or 'NO' as a string" do
    location = build(:location)
    expect(location.industrial_stop).to eq "YES"
  end

end
