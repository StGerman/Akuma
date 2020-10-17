# frozen_string_literal: true

class AssignmentResource < JSONAPI::Resource
  model_name 'Assigner'

  has_one :person
  has_one :task
  has_one :author, class_name: 'Person'

  singleton singleton_key: ->(_context) { nil }
end
