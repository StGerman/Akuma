# frozen_string_literal: true

class AddCategoryToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :category_id, :integer, foreign_key: true
    add_index  :tasks, :category_id
  end
end
