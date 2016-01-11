class AddDestroyedToLinks < ActiveRecord::Migration
  def change
    add_column :links, :destroyed, :boolean
  end
end
