class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def correct_user?
    @user = User.find(params[:id])
    unless current_user == @user
      redirect_to users_path
    end
  end
end
