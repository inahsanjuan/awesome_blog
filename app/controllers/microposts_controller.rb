class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.new(
      content: params[:micropost][:content],
      picture: params[:micropost][:picture]
    )

    if @micropost.save
      redirect_to root_url
    else
      render "users/feed"
    end
  end
end
