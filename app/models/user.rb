class User < ApplicationRecord
  has_many :best_friends
  has_many :dogs, through: :best_friends
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
