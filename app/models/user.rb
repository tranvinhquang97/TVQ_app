class User < ApplicationRecord
  before_save :downcase_email
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true
  has_secure_password

  def downcase_email
    email.downcase!
  end
end
