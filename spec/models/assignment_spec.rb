# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Assignment, type: :model do
  subject(:assignment) { described_class.new(assignee: person) }

  let(:person) { FactoryBot.create(:person) }

  before { FactoryBot.create(:task) }

  it { expect { assignment.save }.to change { person.tasks.count }.by(1) }
end
