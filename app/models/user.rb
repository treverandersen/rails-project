class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password

  has_many :tloads, foreign_key: "user_id", class_name: "Tload"
  has_many :bins, foreign_key: "user_id", class_name: "Bin"
  has_many :drivers, foreign_key: "user_id", class_name: "Driver"
  has_many :fields, foreign_key: "user_id", class_name: "Field"
  
  validates :username, :email, presence: true, length: { maximum: 255 }
  validates :username, :email, uniqueness: true
  validates :password, presence: true
end
