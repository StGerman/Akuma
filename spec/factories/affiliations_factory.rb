FactoryBot.define do
  factory :affiliation do
    value { 1 }
    task

    trait :dune do
      category { Category.find_or_create_by!(name: 'Dune') }
    end
    trait :harry_potter do
      category { Category.find_or_create_by!(name: 'HarryPotter') }
    end
    trait :lebowski do
      category { Category.find_or_create_by!(name: 'Lebowski') }
    end
  end
end
