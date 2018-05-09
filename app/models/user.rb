class User < ApplicationRecord
  has_many :projects

  validates :name, presence: true
  has_secure_password

end
