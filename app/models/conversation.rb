class Conversation < ApplicationRecord
  belongs_to :engineer
  belongs_to :recruiter
  validates_uniqueness_of :engineer_id, scope: :recruiter_id

  scope :between, -> (sender_id,recipient_id) do
      where("(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
    end

end
