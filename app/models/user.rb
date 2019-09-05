class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password

  has_many :tloads
  has_many :bins
  has_many :drivers
  has_many :fields
  
  validates :username, :email, presence: true, length: { maximum: 255 }
  validates :username, :email, :uniqueness => { :scope => :user_id }
  validates :password, presence: true

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:email => auth_hash["info"]["email"]).first_or_create do |user|
      user.username = auth_hash["info"]["nickname"]
      user.password = SecureRandom.hex
    end
  end
end
