# frozen_string_literal: true
class AddVisitsToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :visits, :integer
  end
end
