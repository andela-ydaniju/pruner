# frozen_string_literal: true
class AddShortenedLinkToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :shortened_link, :string
  end
end
