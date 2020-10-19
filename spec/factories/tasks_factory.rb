# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }

    trait :dune_category do
      title { Faker::Books::Dune.saying }
      description { Faker::Books::Dune.quote }
      affiliations { [association(:affiliation, :dune)] }
    end

    trait :harry_potter_category do
      title { Faker::Movies::HarryPotter.quote }
      description { Faker::Movies::HarryPotter.quote }
      affiliations { [association(:affiliation, :harry_potter_category)] }
    end

    trait :lebowski_category do
      title { Faker::Movies::Lebowski.quote }
      description { Faker::Movies::Lebowski.quote }
      affiliations { [association(:affiliation, :lebowski_category)] }
    end

    trait :dune_person do
      title { Faker::Books::Dune.saying }
      description { Faker::Books::Dune.quote }
      assignments { [association(:assignment, :dune_person)] }
    end

    trait :harry_potter_person do
      title { Faker::Movies::HarryPotter.quote }
      description { Faker::Movies::HarryPotter.quote }
      assignments { [association(:assignment, :harry_potter_person)] }
    end

    trait :lebowski_person do
      title { Faker::Movies::Lebowski.quote }
      description { Faker::Movies::Lebowski.quote }
      assignments { [association(:assignment, :lebowski_person)] }
    end
  end
end
