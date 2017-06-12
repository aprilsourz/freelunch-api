class RecruiterSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :user_id
end
