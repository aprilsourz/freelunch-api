# frozen_string_literal: true

class AddAccountTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :account_type, :integer, default: 0, index: true
  end
end
