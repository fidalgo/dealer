FactoryGirl.define do
  factory :model do
    name { Faker::Hacker.verb }
    model_slug { Faker::Hacker.ingverb }
    organization
  end
end
