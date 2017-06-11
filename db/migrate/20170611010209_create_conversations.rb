class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :recruiter_name, null: false
      t.string :engineer_name, null: false

      t.boolean :show_to_engineer, null: false, default: true
      t.boolean :show_to_recruiter, null: false, default: true
      t.boolean :is_completed, default: true

      t.string :response
      t.string :lunch_request, null: false

      t.references :engineer, index: true, foreign_key: true, null: false
      t.references :recruiter, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
