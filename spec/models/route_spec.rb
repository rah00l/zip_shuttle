require 'rails_helper'

RSpec.describe Route, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "has a valid factory" do
    expect(build(:route)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:route, name: nil)).to_not be_valid
    # expect(build(:route, name: nil)).to eq(1).errors_on(:name)
  end

  it "should have many locations" do
    g = Route.reflect_on_association(:locations)
    expect(g.macro).to eq :has_many
  end

  it "should have many pickup_route_start_times" do
    g = Route.reflect_on_association(:pickup_route_start_times)
    expect(g.macro).to eq :has_many
  end

  it "should have many drop_route_start_times" do
    g = Route.reflect_on_association(:drop_route_start_times)
    expect(g.macro).to eq :has_many
  end

  it "should have many locations" do
    g = Route.reflect_on_association(:pickup_point_time_details)
    expect(g.macro).to eq :has_many
  end

  it "should have many locations" do
    g = Route.reflect_on_association(:drop_point_time_details)
    expect(g.macro).to eq :has_many
  end
  
end
