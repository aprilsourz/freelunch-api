class Conversation < ApplicationRecord
  belongs_to :engineer
  belongs_To :recruiter
end
