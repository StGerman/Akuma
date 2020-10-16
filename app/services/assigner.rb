# frozen_string_literal: true

class Assigner
  include Dry::Monads[:result]

  delegate :errors, to: :@action

  def initialize(author:, assignee:, task:, action: Action.new)
    @author = author
    @assignee = assignee
    @task = task
    @kind = :assigned
    @action = action
  end

  def call
    @action.update(author: @author, person: @assignee, kind: @kind, task: @task) ? Success(self) : Failure(self)
  end
end
