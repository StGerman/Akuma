# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { Faker::Movies::HarryPotter.location }
  end
end
