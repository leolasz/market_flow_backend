class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.text "branch_name", null: false
      t.text "location", null: false
      t.text "email"
      t.string "contact"
      t.integer "user_id"
    end
  end
end
