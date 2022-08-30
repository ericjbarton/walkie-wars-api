class Dog < ApplicationRecord
  has_many :user, through: :best_friends
  has_many :best_friends
end
