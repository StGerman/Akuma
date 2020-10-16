# frozen_string_literal: true

class AddAuthoredByToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :author_id, :bigint, foreign_key: true
    add_index :actions, :author_id
  end
end
