require "uri"
class Link < ActiveRecord::Base
  belongs_to :user
  default_scope { order(created_at: :desc) }
  before_create :generate_salt

  validates :name, presence: true
  validates :user_id, presence: true

  after_create :link_shortener, :create_full_link

  def create_full_link
    base_url ||= ENV["BASE_URL"]
    self.full_link = base_url + shortened_link
  end

  def link_shortener
    self.shortened_link = (id.to_s + (salt.to_s)).reverse.to_i.base62_encode
  end

  def generate_salt
    self.salt = (1 + rand(8)).to_s
  end
end
