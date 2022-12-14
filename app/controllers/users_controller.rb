class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:success] = "This user was successfully removed."
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "This user was successfully removed."
  end
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
