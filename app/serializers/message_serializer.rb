class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :conversation_id, :lunchable_id, :lunchable_type
end
