class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_roll_limit
  before_action :set_die_sizes

  @dice_set = DiceSet.first

  protected

  def set_roll_limit
    @roll_limit = [*1..40]
  end

  def set_die_sizes
    @dice_set = DiceSet.first
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

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
