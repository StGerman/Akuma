# frozen_string_literal: true

class Assignment < ApplicationRecord
  belongs_to :task
  belongs_to :assignee, class_name: 'Person'

  validates :task, presence: true
  validates :assignee, presence: true

  before_validation -> { Matchmaker.find_task(self) }
end
