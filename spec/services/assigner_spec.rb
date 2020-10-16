# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Assigner, type: :model do
  subject(:assigner) { described_class.new(author: author, person: person, task: task) }

  let(:author) { FactoryBot.create(:person) }
  let(:person) { FactoryBot.create(:person) }
  let(:task) { FactoryBot.create(:task) }

  it { expect(assigner.call).to be_success }
  it { expect { assigner.call }.to change { task.reload.assigned_person }.from(nil).to(person) }
end
