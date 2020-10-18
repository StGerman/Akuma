class RemoveCategoryIdFromTask < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :category_id, :string
  end
end
