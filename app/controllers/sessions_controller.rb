class SessionsController < ApplicationController
  def homepage
  end

  def login
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path,
        notice: "Welcome back #{user.first_name.titleize}"
    else
      flash[:error] = 'Invalid username/password'
      render :login
    end
  end

  def destroy
    if user = current_user
      session.delete(:user_id)
      redirect_to root_path,
        notice: "You logged out successfully"
    end
  end
end
