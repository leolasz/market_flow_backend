class AddBranchNameToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :branch_name, :text
  end
end
