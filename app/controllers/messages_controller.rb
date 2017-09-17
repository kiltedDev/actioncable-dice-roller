class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_table, only: [:create, :new]

  def create
    message = @table.messages.new(message_params)
    message.user = current_user
    message.save
  end

  private

  def set_table
    @table = Table.find(params[:table_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
