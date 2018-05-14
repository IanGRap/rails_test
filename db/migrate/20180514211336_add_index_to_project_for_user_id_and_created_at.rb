class AddIndexToProjectForUserIdAndCreatedAt < ActiveRecord::Migration[5.1]
  def change
    add_index :projects, [:user_id, :created_at]
  end
end
