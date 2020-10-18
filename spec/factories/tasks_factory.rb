# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
    category { Category.find_or_create_by!(name: 'lorem') }

    trait :dune do
      title { Faker::Books::Dune.saying }
      description { Faker::Books::Dune.quote }
      category { Category.find_or_create_by!(name: 'Dune') }
    end

    trait :harry_potter do
      title { Faker::Movies::HarryPotter.quote }
      description { Faker::Movies::HarryPotter.quote }
      category { Category.find_or_create_by!(name: 'HarryPotter') }
    end

    trait :lebowski do
      title { Faker::Movies::Lebowski.quote }
      description { Faker::Movies::Lebowski.quote }
      category { Category.find_or_create_by!(name: 'Lebowski') }
    end
  end
end
