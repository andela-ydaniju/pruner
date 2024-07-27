# frozen_string_literal: true
class RemoveFullLinkFromLinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :links, :full_link, :string
  end
end
