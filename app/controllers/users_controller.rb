class UsersController < ApplicationController
    before_action :require_user, only: [:profile]
    before_action :require_admin, only: [:index, :new, :create, :update, :show, :edit, :destroy]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @toys = @user.toys 
  end

  def profile
    @user = User.find_by(id:current_user.id)
    @toys = @user.toys
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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:success] = "This user was successfully updated."
      redirect_to "/profile"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "This user was successfully removed."
  end

  def dashboard
    @users = User.all
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :password, :first_name, :last_name, :email, :phone)
  end

end
