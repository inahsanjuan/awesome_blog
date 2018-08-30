class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.new(
      content: params[:micropost][:content]
    )

    if @micropost.save
      redirect_to root_url
    else
      render "pages/home"
    end
  end
end
