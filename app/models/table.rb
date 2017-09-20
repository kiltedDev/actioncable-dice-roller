class Table < ApplicationRecord
  has_many :invitations
  has_many :users, -> { uniq }, through: :invitations
  has_one :game_master_invitation,
  -> { where game_master: true },
  class_name: 'Invitation'
  has_one :game_master,
  through: :game_master_invitation,
  source: :user
  has_many :messages
  has_many :die_rolls

  validates_presence_of :name
end
