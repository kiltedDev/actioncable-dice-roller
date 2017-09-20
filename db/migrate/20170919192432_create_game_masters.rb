class CreateGameMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :game_masters do |t|
      t.integer :user_id, null: false
      t.integer :table_id, null: false

      t.timestamps
    end
  end
end
