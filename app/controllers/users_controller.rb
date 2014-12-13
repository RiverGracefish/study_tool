class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path,
        notice: "Thank you for signing up #{@user.first_name.titlecase}"
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :email, :password, :password_confirmation, :wordpress, :github, :course, :bio)
  end
end
