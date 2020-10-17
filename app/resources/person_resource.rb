# frozen_string_literal: true

class PersonResource < JSONAPI::Resource
  immutable

  attributes :name

  has_many :tasks
end
