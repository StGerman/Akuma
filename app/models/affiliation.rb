# frozen_string_literal: true

class Affiliation < ApplicationRecord
  belongs_to :affilatable, polymorphic: true
  belongs_to :task
  validates :value, presence: true
end
