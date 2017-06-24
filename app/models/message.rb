class Message < ApplicationRecord
  belongs_to :lunchable, polymorphic: true

  validates_presence_of :body, :conversation_id

  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
