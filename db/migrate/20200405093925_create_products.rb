class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  "item", null: false
      t.float   "price"
      t.text    "image"
    end
  end
end
