class Table < ApplicationRecord
  has_many :invitations
  has_many :users, through: :invitations
  has_one :game_master_invitation,
  -> { where game_master: true },
  class_name: 'Invitation'
  has_one :game_master,
  through: :game_master_invitation,
  source: :user
  has_many :messages

  validates_presence_of :name
end
