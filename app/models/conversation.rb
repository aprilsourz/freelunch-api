class Conversation < ApplicationRecord
  belongs_to :engineer
  belongs_to :recruiter
end
