# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :category, optional: true

  has_many :actions, dependent: :restrict_with_error
  has_many :assignments, dependent: :restrict_with_error
  has_one :current_assignment, -> { order(updated_at: :desc).limit(1) }, inverse_of: :task, class_name: 'Assignment'
  has_one :assigne, through: :current_assignment

  default_scope -> { order(created_at: :desc) }
  scope :unassigned, -> { left_joins(:assignments).where(assignments: { task_id: nil }) }

  validates :title, presence: true
  validates :description, presence: true

  def to_s
    "#{title} #{description}"
  end
end
