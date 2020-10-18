# frozen_string_literal: true

class PersonSerializer
  include JSONAPI::Serializer

  attributes :name

  has_many :actions
  has_many :assignments
  has_many :tasks
end
