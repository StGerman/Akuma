# frozen_string_literal: true

class Action < ApplicationRecord
  belongs_to :task
  belongs_to :author, class_name: 'Person'
  belongs_to :subject, polymorphic: true

  validates :task, presence: true
  validates :person, presence: true
end
