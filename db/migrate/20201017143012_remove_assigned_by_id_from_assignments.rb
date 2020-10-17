# frozen_string_literal: true

class RemoveAssignedByIdFromAssignments < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :assigned_by_id, :string
  end
end
