# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, presence: true

  has_many :actions, inverse_of: :actions, dependent: :restrict_with_error
  has_many :task, through: :actions
end
