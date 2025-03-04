class User < ApplicationRecord
  validates :email, presence: true
  has_secure_password #adds functionalities to set and authenticate against a BCrypt password

  validates :role, inclusion: { in: %w[user admin], message: "%{value} is not a valid role" }

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
