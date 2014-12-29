# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  # factory :location do
  #   name { Faker::Name.name }
  # end


factory :location do
    association :route
    name { Faker::Name.name }
    industrial_stop "YES"
    # summary { Faker::Lorem.sentence(10) }
    # body { Faker::Lorem.sentence(15) }
    # seo_title { Faker::Lorem.sentence }
    # seo_description { Faker::Lorem.sentence }
    # seo_keywords { Faker::Lorem.words(8).join(", ") }
    # published_at { Time.zone.now }
    # is_draft { false }

    # factory :published_three_weeks_ago_content do
    #   published_at { 3.weeks.ago }
    # end

    # factory :expiring_in_two_weeks_content do
    #   unpublished_at { 2.weeks.from_now }
    # end

    # factory :publish_in_tree_weeks_content do
    #   published_at { 3.weeks.from_now }
    # end
  end

end
