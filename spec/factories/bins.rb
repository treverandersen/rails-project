require 'faker'
FactoryBot.define do
  factory :bin do
    name { Faker::Name }
    bushel_capacity { Faker::Number.number(5) }
    level { Faker::Number.number(5) }
    load_in { Faker::Number.number(5) }
    load_out { Faker::Number.number(5) }
  end
end
