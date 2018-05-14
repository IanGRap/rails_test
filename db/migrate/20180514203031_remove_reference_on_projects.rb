class RemoveReferenceOnProjects < ActiveRecord::Migration[5.1]
  def change
    remove_reference :projects, :users, foreign_key: true
  end
end
