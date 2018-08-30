class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id

      flash[:success] = "Logged in."
      redirect_to user
    else
      flash[:danger] = "Invalid information."
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)

    redirect_to root_url
  end
end
