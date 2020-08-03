class User < ApplicationRecord
  has_secure_password
  has_secure_password
  validates :username, presence: true, length: {maximum: 50}
  validates :password, presence: true, length: {minimum: 6}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
  has_many :created_events, foreign_key: :creator_id, :class_name => "Event", dependent: :destroy
end
