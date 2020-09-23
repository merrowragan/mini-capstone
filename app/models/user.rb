class User < ApplicationRecord
  has-many :orders 
  has_secure_password 
  
  validates :email, presence: true, uniqueness: true 
end
