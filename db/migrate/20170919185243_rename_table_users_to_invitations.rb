class RenameTableUsersToInvitations < ActiveRecord::Migration[5.1]
  def change
    rename_table('table_users', 'invitations')
  end
end
