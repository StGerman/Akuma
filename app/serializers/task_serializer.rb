class TaskSerializer
  include JSONAPI::Serializer

  attributes :title, :description
end