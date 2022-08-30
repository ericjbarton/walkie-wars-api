class BestFriend < ApplicationRecord
  belongs_to :dog
  belongs_to :users
  has_many :walks
end
