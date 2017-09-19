class ChangePdieName < ActiveRecord::Migration[5.1]
  def change
    rename_column :dice_sets, :dp_url, :d100_url
  end
end
