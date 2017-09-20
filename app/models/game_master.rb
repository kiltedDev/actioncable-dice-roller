class GameMaster < ApplicationRecord

  validates_presence_of :user_id
  validates_presence_of :table_id
end
