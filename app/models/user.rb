class User < ApplicationRecord
  validates :username, uniqueness: true
  has_many :posts
  has_many :comments
 
  # def username
  #   @user.username
  # end
end
