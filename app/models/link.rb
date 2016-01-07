require "uri"
class Link < ActiveRecord::Base
  URL_REGEX = %r{\A(https?:\/\/)?([a-z0-9]+\.)?[a-z0-9\-]+\.[a-z]+.+[^\W\_]\z}

  belongs_to :user
  default_scope { order(created_at: :desc) }
  before_create :link_shortener

  validates :name, format: { with: URL_REGEX }

  def link_shortener
    self.shortened_link = SecureRandom.urlsafe_base64(5)
  end
end
