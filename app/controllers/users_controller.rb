class UsersController < ApplicationController
  def index
    @users = User.all    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password]
    )

    if @user.save
      redirect_to @user
    else
      render 'new' 
    end    
  end

  def show
    @user = User.find(params[:id])
  end
end
