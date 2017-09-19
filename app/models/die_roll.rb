class DieRoll < ApplicationRecord
  belongs_to :table
  belongs_to :user
  
  validates_presence_of :dice_count
  validates_numericality_of :dice_count, only_integer: true, message: "can only be whole number."
  validates_presence_of :die_size
  validates_numericality_of :bonus, only_integer: true, message: "can only be whole number."
end
