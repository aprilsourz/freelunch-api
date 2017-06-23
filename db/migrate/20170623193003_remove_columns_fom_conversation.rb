class RemoveColumnsFomConversation < ActiveRecord::Migration[5.0]
  def change
    remove_column :conversations, :recruiter_name, :string
    remove_column :conversations, :engineer_name, :string
    remove_column :conversations, :is_completed, :boolean
    remove_column :conversations, :lunch_request, :string
    remove_column :conversations, :response, :string
  end
end
