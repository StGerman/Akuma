# frozen_string_literal: true

class Assigner
  include Dry::Monads[:result]

  delegate :errors, to: :@action

  def initialize(author:, person:, task:, action: Action.new)
    @author = author
    @person = person
    @task = task
    @kind = :assigned
    @action = action
  end

  def call
    @action.update(author: @author, person: @person, kind: @kind, task: @task) ? Success(self) : Failure(self)
  end
end
