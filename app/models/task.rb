# frozen_string_literal: true

class Task < ApplicationRecord
  has_many :affiliated_categories, as: :affilatable, dependent: :destroy, class_name: 'Affiliation'
  has_many :categories, through: :affiliated_categories

  has_many :affiliated_people, as: :affilatable, dependent: :destroy, class_name: 'Affiliation'

  has_many :actions, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_one :current_assignment, -> { order(updated_at: :desc).limit(1) }, inverse_of: :task, class_name: 'Assignment'
  has_one :assignee, through: :current_assignment

  scope :unassigned, -> { left_joins(:assignments).where(assignments: { task_id: nil }) }

  validates :title, presence: true
  validates :description, presence: true

  def to_s
    "#{title} #{description}"
  end
end
