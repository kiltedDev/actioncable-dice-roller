class AddingGmToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :game_master, :boolean, null: false, default: false
  end
end
