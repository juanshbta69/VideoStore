class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticate
    if(session[:user_id] == nil)
      @current_user = session[:user_id]
      redirect_to new_session_path, :notice => "Please log in to continue" 
      return false
    else
      @current_user = User.find(session[:user_id])
      return true
    end
  end
end
