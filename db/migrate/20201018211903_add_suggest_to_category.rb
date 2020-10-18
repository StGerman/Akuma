class AddSuggestToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :suggest, :boolean
  end
end
