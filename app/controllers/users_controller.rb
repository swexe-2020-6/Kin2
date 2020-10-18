class UsersController < ApplicationController
  def index
    @user  = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
        uid: params[:user][:uid],
        pass: BCrypt::Password.create(params[:user][:pass])
      )
      @user.save
      
      redirect_to users_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    
    redirect_to users_path
  end
end