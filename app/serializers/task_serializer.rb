# frozen_string_literal: true

class TaskSerializer
  include JSONAPI::Serializer

  attributes :title, :description
end
