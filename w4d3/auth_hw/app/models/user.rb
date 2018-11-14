class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :password, length: { minimum: 6, allow_nil: true }

end
