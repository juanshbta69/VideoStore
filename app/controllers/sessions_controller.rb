class SessionsController < ApplicationController
  
  def create
    user = User.first(:conditions => ["e_mail = ? and password = ?", params[:e_mail], params[:password]]) 
    if(user != nil)
      session[:user_id] = user.id
      redirect_to categories_path, :notice => "Loged in succesfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end 
  end
  
  def destroy
    reset_session
    redirect_to categories_path, :notice => "You succesfully logged out"
  end
end
