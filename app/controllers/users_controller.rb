class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    if user.save
      redirect_to 
    else
      flash[:errors] = user.errors.full_messages
    end
  end
  def show

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
  def set_user
    @user = User.find(params[:id])
  end
end
