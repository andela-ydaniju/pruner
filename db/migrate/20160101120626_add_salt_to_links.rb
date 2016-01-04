class AddSaltToLinks < ActiveRecord::Migration
  def change
    add_column :links, :salt, :string
  end
end
