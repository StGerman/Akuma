# frozen_string_literal: true

FactoryBot.define do
  factory :affiliation do
    value { 1 }
    task
    affilatable { association(:category) }

    trait :dune_category do
      affilatable { Category.find_or_create_by!(name: 'Dune') }
    end
    trait :harry_potter_category do
      affilatable { Category.find_or_create_by!(name: 'HarryPotter') }
    end
    trait :lebowski_category do
      affilatable { Category.find_or_create_by!(name: 'Lebowski') }
    end

    trait :dune_person do
      affilatable { Person.find_or_create_by!(name: 'Dune') }
    end
    trait :harry_potter_person do
      affilatable { Person.find_or_create_by!(name: 'HarryPotter') }
    end
    trait :lebowski_person do
      affilatable { Person.find_or_create_by!(name: 'Lebowski') }
    end
  end
end
