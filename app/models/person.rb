# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :actions, dependent: :restrict_with_error
  has_many :assignments, inverse_of: :assigne, foreign_key: :assignee_id, dependent: :restrict_with_error
  has_many :tasks, through: :assignments

  validates :name, presence: true
  slug :name

  scope :suggestable, -> { where(suggest: true) }
end
