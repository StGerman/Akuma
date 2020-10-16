class AddAuthoredByToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :author_id, :bigint, null: false, foreign_key: true
    add_index :actions, :author_id
  end
end
