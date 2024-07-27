# frozen_string_literal: true
class AddDefaultValueToEnabledAttribute < ActiveRecord::Migration[7.1]
  def change
    change_column :links, :enabled, :boolean, default: true
  end
end
