class Invitation < ApplicationRecord
  belongs_to :table
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :table_id
end
