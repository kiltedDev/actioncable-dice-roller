class SavedRoll < ApplicationRecord
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :user_id
  validates_presence_of :dice_count
  validates_presence_of :die_size
end
