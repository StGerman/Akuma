# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tasks, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: true
  slug :name
end