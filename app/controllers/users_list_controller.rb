class UsersListController < ApplicationController
  def users_list
    @users = User.all
  end

  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :email, :password, :password_confirmation, :wordpress, :github, :course, :bio)
  end
end
