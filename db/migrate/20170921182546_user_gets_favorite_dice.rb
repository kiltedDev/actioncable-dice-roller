class UserGetsFavoriteDice < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :favorite_dice, :integer, null: false, default: 1
  end
end
