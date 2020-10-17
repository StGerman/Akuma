# frozen_string_literal: true

FactoryBot.define do
  factory :assignment do
    assigne { association(:person) }
    task { create(:task) }
  end
end
