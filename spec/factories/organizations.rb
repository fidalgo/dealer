FactoryGirl.define do
  factory :organization do
    name { Faker::Company.name }
    public_name { "#{name} #{Faker::Company.suffix}" }
    type { rand(1..3) }
  end
end
