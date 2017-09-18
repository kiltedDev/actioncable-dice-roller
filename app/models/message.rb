class Message < ApplicationRecord
  belongs_to :table
  belongs_to :user

  validates_presence_of :body
end
