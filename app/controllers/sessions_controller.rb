class SessionsController < ApplicationController
    def index
    
    end
  
    def new
    end
  
    def create
      @user = User.find_by_email(params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id
          redirect_to '/'
      else
          redirect_to '/login'
      end 
    end 
  
    def destroy 
      session[:user_id] = nil 
      redirect_to '/' 
    end
  
    def about
    end

    def feed
      @toys = Toy.all
    end

end
