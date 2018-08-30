class PagesController < ApplicationController
  def home
    if current_user
      @micropost = current_user.microposts.new
      render "users/feed"
    end
  end

  def about
  end
end
