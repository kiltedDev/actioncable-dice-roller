class User < ApplicationRecord
  has_many :invitations
  has_many :tables, through: :invitations
  has_many :messages
  has_many :die_rolls

  validates :username, presence: true, uniqueness: true, length: {minimum: 6, maximum: 24}, format: { with: /^\w+$/, multiline: true }
  validates :email, presence: true, format: { with: /\A^([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$\z/i, multiline: true }
  validates_presence_of :favorite_dice

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
