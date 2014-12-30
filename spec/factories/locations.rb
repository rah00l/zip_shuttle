# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

factory :location do
    association :route
    name { Faker::Name.name }
    industrial_stop "YES"
  end

end
