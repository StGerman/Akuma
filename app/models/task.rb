# frozen_string_literal: true

class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :actions, dependent: :restrict_with_error

  Action::KINDS.each do |kind|
    has_one :"#{kind}_action", -> { where(kind: kind) }, class_name: 'Action', inverse_of: :task
    has_one :"person_#{kind}", through: :"#{kind}_action", class_name: 'Person', source: :person
  end
end
