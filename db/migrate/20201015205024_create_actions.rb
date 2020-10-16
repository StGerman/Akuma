# frozen_string_literal: true

class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.references :person
      t.references :task
      t.integer :kind

      t.timestamps
    end
  end
end
