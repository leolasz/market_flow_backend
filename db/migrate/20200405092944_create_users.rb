class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text "name"
      t.text "email" , null: false
      t.string "password_digest", null: false
      t.boolean "admin", default: false
    end
  end
end
