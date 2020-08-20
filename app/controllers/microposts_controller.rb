class MicropostsController < ApplicationController
  before_action :logged_in_user, only: %i(create destroy)
  before_action :correct_user, only: :destroy
  before_action :new_micropost, only: :create

  def create
    if @micropost.save
      flash[:success] = t "inform_success"
      redirect_to root_url
    else
      @feed_items = current_user.feed.page(params[:page])
                                .per Settings.validations.users.per_page
      flash.now[:danger] = t "inform_error"
      render "static_pages/home"
    end
  end

  def destroy
    if @micropost.destroy
      flash[:success] = t "inform_success"
    else
      flash[:danger] = t "inform_error"
    end
    redirect_to request.referer || root_url
  end

  private

  def micropost_params
    params.require(:micropost).permit Micropost::MICROPOSTS_PARAMS_PERMIT
  end

  def correct_user
    @micropost = current_user.microposts.find_by id: params[:id]
    redirect_to root_url unless @micropost
  end

  def new_micropost
    @micropost = current_user.microposts.build micropost_params
    @micropost.image.attach micropost_params[:image]
  end
end
