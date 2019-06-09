class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password

  validates :username, :email, presence: true, length: { maximum: 255 }
  validates :username, :email, uniqueness: true
  validates :password, presence: true
end
