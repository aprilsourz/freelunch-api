class CreateRecruiters < ActiveRecord::Migration[5.0]
  def change
    create_table :recruiters do |t|
      t.string :name, null: false
      t.string :website, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
