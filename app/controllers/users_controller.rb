class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
    @submissions = @user.submissions
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @users
      else
        render 'new'
      end
  end

  def destroy
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
