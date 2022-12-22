class PagesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:page][:email])
    if @user && @user.authenticate(params[:page][:password])
        session[:user_id] = @user.id
        redirect_to '/'
    else
        redirect_to '/about'
    end 
  end 

  def destroy 
    session[:user_id] = nil 
    redirect_to '/' 
  end

  def about
  end
end
