class RemoveColumnRolesMask < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :roles_mask
  end
end
