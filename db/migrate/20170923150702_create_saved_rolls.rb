class CreateSavedRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_rolls do |t|
      t.integer :user_id, null: false
      t.integer :dice_count, null: false
      t.integer :die_size, null: false
      t.integer :bonus

      t.timestamps null: false
    end
  end
end
