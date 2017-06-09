# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  enum account_type: %i[engineer recruiter]
end
