# frozen_string_literal: true

class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :assigne_id
      t.integer :assigned_by_id
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end

    add_index :assignments, :assigne_id
    add_index :assignments, :assigned_by_id
  end
end
