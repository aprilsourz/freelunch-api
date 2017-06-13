class Conversation < ApplicationRecord
  belongs_to :engineer
  belongs_to :recruiter
  validates_uniqueness_of :engineer_id, scope: :recruiter_id
end
