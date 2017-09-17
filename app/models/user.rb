class User < ApplicationRecord
  has_many :table_users 
  has_many :tables, through: :table_users 
  has_many :messages

  validates_uniqueness_of :username
  validates_presence_of :username

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
