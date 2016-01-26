FactoryGirl.define do
  factory :organization do
    name { Faker::Company.name }
    public_name { "#{name} #{Faker::Company.suffix}" }
    type { Organization.types.values.sample }
    pricing_policy { Organization.pricing_policies.values.sample }
  end
end
