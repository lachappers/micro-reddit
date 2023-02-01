class User < ApplicationRecord
  validates :username, uniqueness: true
  has_many :posts
  has_many :comments
  has_many :likes

 
  # def username
  #   @user.username
  # end
end
