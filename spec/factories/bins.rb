require 'faker'

FactoryBot.define do
  factory :bin do
    name { Faker::Name.name }
    bushel_capacity { Faker::Number.number(5) }
    level { Faker::Number.number(4) }
  end
end
