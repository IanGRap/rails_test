class DdIndexToTaskForProjectIdAndCreatedAt < ActiveRecord::Migration[5.1]
  def change
    add_index :tasks, [:project_id, :created_at]
  end
end
