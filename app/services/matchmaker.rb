# frozen_string_literal: true

class Matchmaker
  def self.find_task(assigment)
    # binding.pry
    assigment.task = Task.unassigned.first!
  end
end
