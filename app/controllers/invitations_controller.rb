class InvitationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_table

  def new
    @table = Table.find(params[:table_id])
    @users = User.all
  end

  def create
    @invitation = @table.invitations.where(user_id: params[:user_id]).first_or_create
    user = User.find(params[:user_id])
    redirect_to new_table_invitations_path(@table), notice: "#{user.username} was successfully invited to #{@table.name}."
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
