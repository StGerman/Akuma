# frozen_string_literal: true

class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  default_scope -> { order(created_at: :desc) }

  has_many :actions, dependent: :restrict_with_error

  has_many :assignments, dependent: :restrict_with_error
  has_one :current_assignment, -> { order(updated_at: :desc).limit(1) }, inverse_of: :task, class_name: 'Assignment'
  has_one :assigne, through: :current_assignment

  scope :unassigned, -> { left_joins(:assignments).where(assignments: { task_id: nil }) }
end
