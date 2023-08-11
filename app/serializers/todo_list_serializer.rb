class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :title, :done
end
