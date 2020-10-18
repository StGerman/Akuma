# frozen_string_literal: true

class Affiliation < ApplicationRecord
  belongs_to :category
  belongs_to :task
  validates :value, presence: true
end
