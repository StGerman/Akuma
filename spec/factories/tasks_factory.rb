# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }

    { dune_category: Faker::Books::Dune,
      harry_potter_category: Faker::Movies::HarryPotter,
      lebowski_category: Faker::Movies::Lebowski }.each do |(category_type, faker)|
      trait category_type do
        title { faker.quote }
        description { faker.quote }
        affiliations { [association(:affiliation, category_type)] }
      end
    end

    { dune_person: Faker::Books::Dune,
      harry_potter_person: Faker::Movies::HarryPotter,
      lebowski_person: Faker::Movies::Lebowski }.each do |(person_type, faker)|
      trait person_type do
        title { faker.quote }
        description { faker.quote }
        assignments { [association(:assignment, person_type)] }
      end
    end
  end
end
