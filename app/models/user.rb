class User < ApplicationRecord
  has_many :tloads
  has_many :bins, through: :tloads
  has_many :drivers, through: :tloads
  has_many :fields, through: :tloads
  
  before_save { self.email = email.downcase }
  has_secure_password

  validates :username, :email, presence: true, length: { maximum: 255 }
  validates :username, :email, uniqueness: true
  validates :password, presence: true
end
