class User < ApplicationRecord
  has_many :projects, dependent: :destroy

  validates :name, presence: true
  has_secure_password

end
