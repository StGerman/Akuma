# frozen_string_literal: true

class Matchmaker
  def self.find_task(_assigment)
    Task.unassigned.first
  end
end
