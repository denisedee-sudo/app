class ApplicationController < ActionController::Base
    helper_method :current_user 
 
    def current_user 
    @current_user ||= User.find(page[:user_id]) if page[:user_id] 
    end 
    def require_user 
        redirect_to '/login' unless current_user 
    end  
end
