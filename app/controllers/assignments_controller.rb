# frozen_string_literal: true

class AssignmentsController < ApplicationController
  def create
    assignment = Assignment.new(assigne: person)
    if assignment.save
      render jsonapi: assignment
    else
      render jsonapi_errors: assignment.errors, status: :unprocessable_entity
    end
  end

  private

  def person
    @person ||= Person.find(params.require(:person_id))
  end
end
