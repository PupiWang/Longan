class User < ActiveRecord::Base
  has_many :clients
  validates :email, :password, :password_confirmation, :name, :telephone, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true
end
