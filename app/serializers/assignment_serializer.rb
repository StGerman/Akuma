# frozen_string_literal: true

class AssignmentSerializer
  include JSONAPI::Serializer

  # set_type :assignment
  # set_id :person_id

  belongs_to :assigne, record_type: :person, serializer: PersonSerializer
  belongs_to :task
end
