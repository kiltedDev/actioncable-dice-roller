class Table < ApplicationRecord
  has_many :table_users
  has_many :users, through: :table_users
  has_many :messages

  validates_presence_of :name
end
