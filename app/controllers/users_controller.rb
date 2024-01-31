class UsersController < ApplicationController
  
  def index 
    @user = User.new
  end
  def create
    @user = User.create(user_params)
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :role)
    end
end
