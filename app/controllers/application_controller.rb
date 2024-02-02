class ApplicationController < ActionController::Base
    before_action :user_present
  def current_user
    authenticate_user ? User.find(session[:user_id])  : nil
  end
  private 
  def authenticate_user
    session[:user_id].present?
  end
  def user_present
    unless current_user.present?
      redirect_to root_path
    end
  end
end
