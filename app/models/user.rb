# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :engineer
  enum account_type: %i[engineer recruiter]
end
