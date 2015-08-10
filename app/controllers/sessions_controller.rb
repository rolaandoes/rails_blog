class SessionsController < ApplicationController
  #login form
  def new
  	render :new
  end

  #authenticate, new session
  def create
  	user = User.find_by_email(user_params[:email])
  	if user && user.authenticate(user_params[:password])
  		sessio[:user_id] = user.id 
  		redirect_to profile_path
  	else
  		redirect_to login_path
  	end
  end

  #delete session/logout
  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
#allow access to db
  private
  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
