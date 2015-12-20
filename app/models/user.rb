class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :username, length: { maximum: 50 }, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 30 }, format: { with:
  VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_secure_password
end
