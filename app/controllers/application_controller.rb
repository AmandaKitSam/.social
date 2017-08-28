class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :fetch_user

  private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end


  # Make sure that no one can edit anybody else's profile
  # Write the following, then go to users_controller write the before_action
  def check_if_logged_in
    redirect_to login_path unless @current_user.present?
  end

  # Make sure ONLY admin can see a list of users's profiles
  # Write the following, then go to users_controller write the before_action
  def check_if_admin
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
