# frozen_string_literal: true
class AddLinksCountToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :links_count, :integer, default: 0
  end
end
