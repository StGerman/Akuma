class RenameAssigneIdToAssigneeId < ActiveRecord::Migration[6.0]
  def change
    rename_column :assignments, :assigne_id, :assignee_id
  end
end
