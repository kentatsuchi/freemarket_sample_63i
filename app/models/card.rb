class Card < ApplicationRecord

  belongs_to :user

  validates :nickname,                presence: true, length: {maximum: 20}, uniqueness: true
  validates :email,                   presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password,      presence: true, length: {minimum: 7, maximum: 128}

end

