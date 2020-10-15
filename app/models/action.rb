# frozen_string_literal: true

class Action < ApplicationRecord
  KINDS = %i[created assigned hold resolved].freeze
  belongs_to :task
  belongs_to :person
  enum kind: KINDS

  validates :task, presence: true
  validates :person, presence: true
  validates :kind, presence: true
end
