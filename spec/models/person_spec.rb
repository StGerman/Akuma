# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'person' do
    subject { described_class.create(person) }

    describe 'can see which task is assigned to them' do
    end

    describe 'can pick a new task'
    describe 'can resolve a task'
    describe 'can put it on hold'
    describe 'can assign a task to someone else'
    describe 'can create new tasks'
  end
end
