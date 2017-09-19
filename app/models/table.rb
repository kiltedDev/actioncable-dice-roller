class Table < ApplicationRecord
  has_many :table_users
  has_many :users, through: :table_users
  has_many :messages
  has_many :die_rolls

  validates_presence_of :name
end
