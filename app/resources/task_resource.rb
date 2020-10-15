# frozen_string_literal: true

class TaskResource < JSONAPI::Resource
  attributes :title, :description
end
