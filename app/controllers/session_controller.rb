class SessionController < ApplicationController
  def new
    # This is the action for user login. The view will have the login form template.
  end

  def create
    # This is the action to which the login form post request is posted. It will add the user's id to the session hash, which will be used for authentication and authorization throughout the session.
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      # session[:email] = user.email
      # If a user record with the entered in the form is present AND the user is authenticated (using bcrypt's authenticate method and the password entered in the form), store their id in the session hash and redirect them to the root path.
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password"
      # flash - last for 1 page
      redirect_to login_path
    end
  end

  # This is the action to which the user sign-out delete request is posted.
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end



# using @user instead of user in def create --> to remember the user while they in it
# using $user instead of user in def create --> 1 user can login only
