# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }

    trait :dune do
      title { Faker::Books::Dune.saying }
      description { Faker::Books::Dune.quote }
      affiliations { [association(:affiliation, :dune)] }
    end

    trait :harry_potter do
      title { Faker::Movies::HarryPotter.quote }
      description { Faker::Movies::HarryPotter.quote }
      affiliations { [association(:affiliation, :harry_potter)] }
    end

    trait :lebowski do
      title { Faker::Movies::Lebowski.quote }
      description { Faker::Movies::Lebowski.quote }
      affiliations { [association(:affiliation, :lebowski)] }
    end
  end
end
