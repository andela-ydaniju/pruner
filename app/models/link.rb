class Link < ActiveRecord::Base
  URL_REGEX =
    %r{\A(https?:\/\/)?([a-z0-9]+\.)?[a-z0-9\-]+\.[a-z]+.+[^\W\_]\z}

  belongs_to :user

  scope :top_links, -> { order(visits: :desc).limit(9) }
  scope :latest_links, -> { order(created_at: :desc).limit(9) }

  before_create :link_shortener

  validates :url_input, format: { with: URL_REGEX }

  after_initialize :init_visits, :init_enabled, :init_erased

  def init_visits
    self.visits ||= 0
  end

  def init_enabled
    self.enabled ||= true
  end

  def init_erased
    self.erased ||= false
  end

  def link_shortener
    self.shortened_link = SecureRandom.urlsafe_base64(5)
  end
end
