class UsersController < ApplicationController

#form 
  def new
  	@user = User.new
  	render :new
  end

#creates in db
  def create
  	user = User.new(user_params)
  	if user.save
  		session[:user_id] = user.id
  		#redirect to /'profile'
  		redirect_to profile_path
  	else
  		#redirect to signup
  		redirect_to signup_path

  	end
  end

# shows user
  def show
  	#this is to append the user data on to the page
  	@current_user = User.find(session[:user_id])
  	render :show
  end

  #allows save to db, and I think show from db
  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
