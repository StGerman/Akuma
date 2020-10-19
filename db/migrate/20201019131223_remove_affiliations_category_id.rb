class RemoveAffiliationsCategoryId < ActiveRecord::Migration[6.0]
  def change
    remove_column :affiliations, :category_id
  end
end
