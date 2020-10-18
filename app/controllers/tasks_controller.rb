# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    # binding.pry
    render json: TaskSerializer.new(person.tasks).serializable_hash
  end

  private

  def person
    Person.find(params.require(:person_id))
  end
end
