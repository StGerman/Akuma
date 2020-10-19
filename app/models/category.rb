# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :affiliations, as: :affiliatable, dependent: :destroy
  has_many :tasks, through: :affiliations

  validates :name, presence: true, uniqueness: true
  slug :name

  scope :suggestable, -> { where(suggest: true) }
end
