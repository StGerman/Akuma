class AddSuggestToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :suggest, :boolean, default: false, null: false
    add_index :people, :suggest
  end
end
