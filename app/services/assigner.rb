# frozen_string_literal: true

class Assigner
  class NoTasks < StandardError; end

  include Dry::Monads[:result]
  include ActiveModel::Conversion

  delegate :errors, to: :@action

  def name
    'assigner-name'
  end

  def _type
    nil
  end

  def id
    nil
  end

  def initialize(author:, person:, action: Action.new, tasks: Task.all)
    @author = author
    @person = person
    @tasks = tasks
    @task = find!
    @kind = :assigned
    @action = action
  end

  def call
    @action.update(author: @author, person: @person, kind: @kind, task: @task) ? Success(self) : Failure(self)
  end

  private

  def find!
    @tasks.unassigned.order(created_at: :asc).first || (raise NoTasks)
  end
end
