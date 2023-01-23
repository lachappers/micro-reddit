class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..25 }, uniqueness: { case_sensitive: false }

  has_many :posts
  has_many :comments
end
