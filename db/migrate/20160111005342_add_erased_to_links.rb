# frozen_string_literal: true
class AddErasedToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :erased, :boolean
  end
end
