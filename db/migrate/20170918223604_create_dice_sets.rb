class CreateDiceSets < ActiveRecord::Migration[5.1]
  def change
    create_table :dice_sets do |t|
      t.string :name, null: false
      t.string :description
      t.string :store_link
      t.string :d4_url, null: false
      t.string :d6_url, null: false
      t.string :d8_url, null: false
      t.string :d10_url, null: false
      t.string :dp_url, null: false
      t.string :d12_url, null: false
      t.string :d20_url, null: false

      t.timestamps
    end
  end
end
