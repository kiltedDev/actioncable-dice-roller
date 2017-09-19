class CreateDieRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :die_rolls do |t|
      t.integer :dice_count, null: false, default: 1
      t.integer :die_size, null: false
      t.integer :bonus

      t.timestamps
    end
  end
end
