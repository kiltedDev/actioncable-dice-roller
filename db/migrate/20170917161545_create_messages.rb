class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :table, foreign_key: true
      t.references :user, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end
