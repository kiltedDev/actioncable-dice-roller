
class InvitationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_table

  def create
    @invitation = @table.invitations.where(user_id: current_user.id).first_or_create
    redirect_to @table
  end

  def destroy
    @invitation = @table.invitations.where(user_id: current_user.id).destroy_all
    redirect_to tables_path
  end

  private

    def set_table
      @table = Table.find(params[:table_id])
    end
end
