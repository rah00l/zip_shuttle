FactoryGirl.define do
  factory :pickup_route_start_time do
	association :route    
	pickup_start_time Time.now
  end

end
