# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :route do
    name { Faker::Name.name }
    # name "MyString"
  end
end
