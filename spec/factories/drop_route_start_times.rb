FactoryGirl.define do
  factory :drop_route_start_time do
	association :route    
	drop_start_time Time.now    
  end

end
