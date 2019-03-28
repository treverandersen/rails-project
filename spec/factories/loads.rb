require 'faker'
FactoryBot.define do
  factory :load do
    load_in { Faker::Number.number(5) }
    load_out { Faker::Number.number(5) }
    net_weight { Faker::Number.number(5) }
    test_weight { Faker::Number.number(2) }
    moisture { Faker::Number.decimal(2) }
    bushels { Faker::Number.number(3) }
  end
end
