class TablesController < ApplicationController
  before_action :set_table, only: [:show, :edit, :update, :destroy]

  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
  end

  def show
    @messages = @table.messages.order(created_at: :desc).limit(100).reverse

  end

  def create
   @table = Table.new(table_params)

   respond_to do |format|
     if @table.save
       @table.table_users.where(user_id: current_user.id).first_or_create
       format.html { redirect_to @table, notice: 'Table was successfully created.' }
       format.json { render :show, status: :created, location: @table }
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
