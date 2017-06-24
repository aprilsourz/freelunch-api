class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recruiter_id, :engineer_id, :show_to_engineer,
             :show_to_recruiter
end
