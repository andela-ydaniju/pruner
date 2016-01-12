class AddLinksCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :links_count, :integer, default: 0
  end
end
