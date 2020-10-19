# frozen_string_literal: true

class Matchmaker
  delegate :task=, :assignee, to: :assignment

  attr_reader :assignment, :limit

  def initialize(assignment:, limit: 100)
    @limit = limit
    @assignment = assignment
  end

  def find_task
    assignment.task ||= if assignment.assignee.suggest?
                          Task.unassigned.second!
                        else
                          Task.unassigned.first!
                        end
  end

  private

  def recommend
    Task.unassigned.limit(limit)
  end
end
