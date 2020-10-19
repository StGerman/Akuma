# frozen_string_literal: true

class TaskFit
  include Comparable

  attr_reader :task, :person

  delegate :affiliated_people, :create_at, to: :task

  def initialize(task:, person:)
    @task = task
    @person = person
  end

  def coefficient
    @coefficient ||= if affiliated_people.where(affilatable: person).any?
                       affiliated_people.where(affilatable: person).first.value || 0
                     else
                       0
                     end
  end

  def life_time
    @life_time ||= (Time.zone.now - create_at)
  end

  def fit
    coefficient * life_time
  end

  def <=>(other)
    fit <=> other.fit
  end
end
