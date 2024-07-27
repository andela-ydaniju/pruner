# frozen_string_literal: true
class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
