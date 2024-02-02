class UsersController < ApplicationController
  skip_before_action :user_present ,only: [:sign_in , :log_in, :registration, :create,:sucess]
  def log_in
    @author = User.new
  end
  def registration
    @author = User.new
  end
  def sign_in
    @user = User.find_by(email: user_params['email'])
    if @user && @user.authenticate(user_params[:password])
      log_inn(@user)
      redirect_to(@user)
    else
      redirect_to root_path
    end
  end
  def sucess 
  end
  def log_out
    session[:user_id] = nil
    redirect_to root_path
  end
  def show
      @user = User.find(params[:id])
      @book = @user.tasks
  end
  def index 
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/user_success'
    else
      puts 'wrong'
    end
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
    def log_inn(user)
      session[:user_id] = user.id
    end
end
