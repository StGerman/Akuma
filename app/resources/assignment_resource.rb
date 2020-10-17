# frozen_string_literal: true

class AssignmentResource < JSONAPI::Resource
  has_one :assigne
  has_one :task
end
