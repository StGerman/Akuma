# frozen_string_literal: true

class AddSlugToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :slug, :string
    add_index :people, :slug, unique: true
  end
end
