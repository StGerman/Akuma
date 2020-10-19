# frozen_string_literal: true

class AddAffilatableIdAndAffilatableTypeToAffilation < ActiveRecord::Migration[6.0]
  def change
    change_table :affiliations, bulk: true do |t|
      t.integer :affiliatable_id
      t.string  :affiliatable_type
    end
    add_index :affiliations, %i[affiliatable_type affiliatable_id]
  end
end
