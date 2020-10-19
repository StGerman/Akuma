# frozen_string_literal: true

class AddAffilatableIdAndAffilatableTypeToAffilation < ActiveRecord::Migration[6.0]
  def change
    change_table :affiliations, bulk: true do |t|
      t.integer :affilatable_id
      t.string  :affilatable_type
    end
    add_index :affiliations, %i[affilatable_type affilatable_id]
  end
end
