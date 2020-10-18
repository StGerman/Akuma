# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, presence: true

  has_many :actions, dependent: :restrict_with_error
  has_many :assignments, inverse_of: :assigne, foreign_key: :assigne_id, dependent: :restrict_with_error
  has_many :tasks, through: :assignments

  scope :suggestable, -> { left_joins(tasks) }
end
