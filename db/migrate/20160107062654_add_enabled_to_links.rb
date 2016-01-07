class AddEnabledToLinks < ActiveRecord::Migration
  def change
    add_column :links, :enabled, :boolean
  end
end
