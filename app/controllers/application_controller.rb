class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = t "inform_login"
    redirect_to login_url
  end

  def load_user
    @user = User.find_by id: params[:id] if params[:id]
    return if @user

    flash[:danger] = t "users.show.notice_error"
    redirect_to root_url
  end
end
