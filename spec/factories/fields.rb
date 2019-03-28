require 'faker'
FactoryBot.define do
  factory :field do
    name { Faker::Name.name }
    acres { Faker::Number.number(3) }
    bushel_per_acre { Faker::Number.number(3) }
  end
end
