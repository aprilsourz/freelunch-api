class Conversation < ApplicationRecord
  belongs_to :engineer
  belongs_to :recruiter
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :engineer_id, scope: :recruiter_id

end
