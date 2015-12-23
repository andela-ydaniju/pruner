class AddShortenedLinkToLinks < ActiveRecord::Migration
  def change
    add_column :links, :shortened_link, :string
  end
end
