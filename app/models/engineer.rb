# frozen_string_literal: true

class Engineer < ApplicationRecord
  belongs_to :user
  has_many :conversations
  has_many :messages, as: :lunchable
end
