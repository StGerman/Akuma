# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SortingHat, type: :model do
  # rubocop:disable RSpec/BeforeAfterAll
  before(:all) do
    %w[Dune HarryPotter Lebowski].each do |movie|
      Person.create!(name: movie, suggest: true)
      FactoryBot.create_list(:task, 5, "#{movie.underscore.to_sym}_person")
    end
  end
  # rubocop:enable RSpec/BeforeAfterAll

  context 'when categorized by person' do
    subject(:sorting_hat) { described_class.new(data: data) }

    let(:test_topic) { 'test topic' }
    let(:data) { TrainingData.new(categories: Person.where(suggest: true)) }

    it { expect { sorting_hat.call(test_topic) }.not_to raise_error }
  end
end
