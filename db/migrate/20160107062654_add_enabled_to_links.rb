# frozen_string_literal: true
class AddEnabledToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :enabled, :boolean
  end
end
