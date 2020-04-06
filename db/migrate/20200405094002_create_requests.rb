class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string "status", default: "OPEN"
      t.integer "branch_id", null: false
      t.integer "product_id", null: false
      t.float   "price"
      t.datetime "created_at", null: false
    end
  end
end
