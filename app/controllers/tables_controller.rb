class TablesController < ApplicationController
  before_action :set_table, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]


  def index
    if user_signed_in?
      @tables = current_user.tables
    end
  end

  def new
    if user_signed_in?
      @table = Table.new
    end
  end

  def show
    @messages = @table.messages.order(created_at: :desc).limit(100).reverse

  end

  def create
   @table = Table.new(table_params)
   @table.game_master = current_user

   respond_to do |format|
     if @table.save
       @table.invitations.where(user_id: current_user.id).first_or_create
       format.html { redirect_to new_table_invitations_path(@table), notice: 'Table was successfully created.' }
       format.json { render :new, status: :created, location: table_invitations_path(@table) }
     else
       format.html { render :new }
       format.json { render json: @table.errors, status: :unprocessable_entity }
     end
   end

 end

 private
  def set_table
    @table = Table.find(params[:id])
  end

  def table_params
    params.require(:table).permit(:name)
  end
end
