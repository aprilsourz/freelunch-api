class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :conversation_id, :sender_name, :created_at, :read,
             :lunchable_id, :lunchable_type
end
