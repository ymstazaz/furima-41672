class RenameUserToUserIdInItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :user, :user_id
  end
end
