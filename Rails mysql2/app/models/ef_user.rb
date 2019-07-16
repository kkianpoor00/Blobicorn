class EfUser < ApplicationRecord

  has_secure_password
  
  has_many :posts

  scope :sorted, lambda { order("id ASC") }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :searchUser, lambda {|query| where(["email LIKE ?", "#{query}"])}
end
