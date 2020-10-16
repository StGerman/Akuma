# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.words }
    description { Faker::Lorem.sentence }
  end
end
