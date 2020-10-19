# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }

    %i[dune_category harry_potter_category lebowski_category].each do |category_type|
      trait category_type do
        title { Faker::Books::Dune.saying }
        description { Faker::Books::Dune.quote }
        affiliations { [association(:affiliation, category_type)] }
      end
    end

    %i[dune_person harry_potter_person lebowski_person].each do |person_type|
      trait person_type do
        title { Faker::Books::Dune.saying }
        description { Faker::Books::Dune.quote }
        assignments { [association(:assignment, person_type)] }
      end
    end
  end
end
