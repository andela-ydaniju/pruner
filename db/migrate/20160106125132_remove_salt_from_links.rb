class RemoveSaltFromLinks < ActiveRecord::Migration
  def change
    remove_column :links, :salt, :string
  end
end
