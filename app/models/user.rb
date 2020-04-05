class User < ApplicationRecord
  has_many :tweets
  has_many :members
  has_many :groups, through: :members
end
