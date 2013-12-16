 require 'bcrypt'
require 'SecureRandom'

class User < ActiveRecord::Base
  attr_accessible :email, :password, :f_name, :l_name
  attr_reader :password
  # dont wan't to be able to sql user.password

  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 6 }
  validates :password_digest, presence: true
  validates :session_token, presence:true


  before_validation :reset_session_token!, on: :create

  def self.find_by_credentials(email, password)
    return nil if (email.nil? || password.nil?)
    user = User.find_by_email(email)
    user.is_password?(password) ? user : nil 
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_email(email)
    where(:email => email).first
  end





end
