# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :affiliations, dependent: :restrict_with_error
  has_many :tasks, through: :affiliations

  validates :name, presence: true, uniqueness: true
  slug :name

  scope :suggestable, -> { where(suggest: true) }
end
