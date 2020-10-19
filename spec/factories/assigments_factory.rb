# frozen_string_literal: true

FactoryBot.define do
  factory :assignment do
    assignee { association(:person) }
    task { create(:task) }

    trait :dune_person do
      assignee { Person.find_or_create_by!(name: 'Dune') }
    end

    trait :harry_potter_person do
      assignee { Person.find_or_create_by!(name: 'HarryPotter') }
    end

    trait :lebowski_person do
      assignee { Person.find_or_create_by!(name: 'Lebowski') }
    end
  end
end
