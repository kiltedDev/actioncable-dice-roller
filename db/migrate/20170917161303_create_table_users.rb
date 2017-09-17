class CreateTableUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :table_users do |t|
      t.references :table, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :table_users, [ :user_id, :table_id ], unique: true, name: 'by_table_and_user'

  end
end
