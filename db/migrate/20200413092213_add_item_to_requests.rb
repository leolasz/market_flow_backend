class AddItemToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :item, :string
  end
end
