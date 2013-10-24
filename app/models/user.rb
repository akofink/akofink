require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  attr_accessor :password_confirmation
  validates :password, confirmation: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    self.password_hash = Password.create(new_password)
  end

  def valid_password?(password)
    self.password == password
  end
end
