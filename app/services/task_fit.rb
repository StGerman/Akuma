# frozen_string_literal: true

class TaskFit
  include Comparable

  attr_reader :task, :person, :affiliation

  delegate :created_at, to: :task

  def initialize(task:, person:)
    @task = task
    @person = person
    @affiliation = task.affiliations.find_by(affiliatable: person)
  end

  def coefficient
    @coefficient ||= (affiliation ? (affiliation.value || 0.0) : 0.0) + 1.0
  end

  def life_time
    @life_time ||= (Time.zone.now - created_at)
  end

  def fit
    coefficient * life_time
  end

  def <=>(other)
    fit <=> other.fit
  end
end
