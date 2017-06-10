# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :engineer
  has_one :recruiter
  enum account_type: %i[engineer recruiter]
end
