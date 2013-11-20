class Driver < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :password, :password_digest, :password_confirmation
end