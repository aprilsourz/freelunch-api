class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recruiter_id, :engineer_id, :recruiter_name, :engineer_name, :show_to_engineer, :show_to_recruiter, :response, :lunch_request, :is_completed
end
