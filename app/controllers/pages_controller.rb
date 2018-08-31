class PagesController < ApplicationController
  def home
    if current_user
      @micropost = current_user.microposts.new
      @microposts = Micropost.all
      render "users/feed"
    end
  end

  def about
  end
end
