class DieRollsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_table, only: [:create, :new]

  def create
    binding.pry
    roll_result = 0
    dice_results = ""
    dice_count = die_roll_params[:dice_count].to_i
    die_size = die_roll_params[:die_size].to_i
    roll_bonus = die_roll_params[:bonus].to_i

    dice_count.times do
      die_result = 1 + rand(die_size)
      roll_result += die_result
      dice_results += "#{die_result} "
    end
    roll_result += roll_bonus

    if roll_bonus != 0
      roll_declaration = "rolled #{dice_count}d#{die_size} plus #{roll_bonus} and got #{roll_result}"
    else
      roll_declaration = "rolled #{dice_count}d#{die_size} and got #{roll_result}"
    end

    dice_faces= "rolled #{dice_results}"
    result_message = @table.messages.new(body: dice_faces)
    result_message.user = current_user
    result_message.save
    MessageRelayJob.perform_later(result_message)

    die_roll = @table.messages.new(body: roll_declaration)
    die_roll.user = current_user
    die_roll.save
    MessageRelayJob.perform_later(die_roll)
    binding.pry
  end

  def index
    binding.pry
  end

  private

  def set_table
    @table = Table.find(params[:table_id])
  end

  def die_roll_params
    params.require(:die_roll).permit(:dice_count, :bonus, :die_size)
  end
end
