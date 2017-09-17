
class TableUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_table

  def create
    @table_user = @table.table_users.where(user_id: current_user.id).first_or_create
    redirect_to @table
  end

  def destroy
    @table_user = @table.table_users.where(user_id: current_user.id).destroy_all
    redirect_to tables_path
  end

  private

    def set_table
      @table = Table.find(params[:table_id])
    end
end
