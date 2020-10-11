class TopController < ApplicationController
  
  def main
    if session[:login_uid]
      render :main
    else
      render :login
    end
  end

  def login
    if checkout(params[:uid], params[:pass]) then
      session[:login_uid] = params[:uid]
      redirect_to root_path
    else
      render :error
    end
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end 
  
  def checkout(id,pass)
        naruto = User.find_by(uid: id)
        if naruto.nil? then
            return false
        end
        
        if naruto [:pass] == pass then
            return true
        end 
        return false
  end
    
end
