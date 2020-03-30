class Group < ApplicationRecord
  has_many: tweets
  has_many: members
  has_many: :users, through: :members
end
