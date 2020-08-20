class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find_by id: params[:followed_id]
    if @user
      current_user.follow @user
      respond_to do |format|
        format.html{redirect_to @user}
        format.js
      end
    else
      flash[:success] = t "inform_error"
      redirect_to root_url
    end
  end

  def destroy
    @relationship = Relationship.find_by id: params[:id] if params[:id]
    if @user = @relationship&.followed
      current_user.unfollow @user
      respond_to do |format|
        format.html{redirect_to @user}
        format.js
      end
    else
      flash[:success] = t "inform_error"
      redirect_to root_url
    end
  end
end
