class PlayersController < ApplicationController


  def index
    @players = User.where("id != #{current_user.id}")
  end

  def show
    @player = User.find(params[:id])
  end
end
