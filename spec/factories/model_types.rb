FactoryGirl.define do
  factory :model_type do
    model
    name { Faker::Hacker.adjective }
    model_type_slug { Faker::Hacker.noun }
    model_type_code { Faker::Hacker.abbreviation }
    base_price { rand(10_000..100_000) }
  end
end
