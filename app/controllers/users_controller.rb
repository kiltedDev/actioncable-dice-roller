class UsersController < ApplicationController
  

  def index
    @users = User.where("id != #{current_user.id}")
  end

  def show
  end
end
