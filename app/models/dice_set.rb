class DiceSet < ApplicationRecord
  validates_presence_of :name

  validates_presence_of :d4_url
  validates_presence_of :d6_url
  validates_presence_of :d8_url
  validates_presence_of :d10_url
  validates_presence_of :d100_url
  validates_presence_of :d12_url
  validates_presence_of :d20_url
end
