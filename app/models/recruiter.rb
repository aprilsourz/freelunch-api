# frozen_string_literal: true

class Recruiter < ApplicationRecord
  belongs_to :user
  has_many :conversations
end
