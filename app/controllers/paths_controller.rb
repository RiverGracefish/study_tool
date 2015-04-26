class PathsController < ApplicationController
  before_action :set_path, only: [:start]
  def adventure_1

  end

  def start
    begin
      @user_path = @path.user_path(current_user)
      @redirect = @user_path.next_user_question ? @user_path.next_user_question : @user_path
      redirect_to @redirect
    rescue => ex
      flash[:error] = ex.message
      redirect_to root_path
    end
  end

  private
  def set_path
    @path = Path.find(params[:id])
  end
end
