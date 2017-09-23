class SavedRollsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:create, :new]
  before_action :set_roll, only: [:edit, :update]

  def new
  end

  def create
    new_roll = SavedRoll.new(roll_params)
    new_roll.user = current_user
    new_roll.save
    redirect_to edit_user_registration_path
  end

  def edit
  end

  private

  def set_user
    @user = current_user
  end

  def set_roll
    @roll = SavedRoll.find(params[:id])
  end

  def roll_params
    params.require(:saved_roll).permit(:name, :dice_count, :die_size, :bonus)

  end
end
