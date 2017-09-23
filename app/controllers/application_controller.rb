class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!
  before_action :set_roll_limit
  before_action :set_die_info



  protected

  def set_roll_limit
    @roll_limit = [*1..40]
  end

  def set_die_info
    @dice_sets = DiceSet.all
    if user_signed_in?
      @dice_set = DiceSet.find(current_user.favorite_dice)
      @die_sizes = [
        ["4", @dice_set[:d4_url]],
        ["6", @dice_set[:d6_url]],
        ["8", @dice_set[:d8_url]],
        ["10", @dice_set[:d10_url]],
        ["100", @dice_set[:d100_url]],
        ["12", @dice_set[:d12_url]],
        ["20", @dice_set[:d20_url]]
      ]
    end
  end

  def configure_permitted_parameters
    added_attributes = [:username, :favorite_dice]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attributes)
  end
end
