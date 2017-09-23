class AddNameToSavedRolls < ActiveRecord::Migration[5.1]
  def change
    add_column :saved_rolls, :name, :string, null: false, default: "fireball"

  end
end
