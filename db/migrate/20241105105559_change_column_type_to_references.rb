class ChangeColumnTypeToReferences < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :user_id, :integer
    add_reference :items, :user, foreign_key: true
  end
end
