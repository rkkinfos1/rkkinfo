
class LoginController < ApplicationController

  require 'digest/sha2'

  def login_page  
 
    # User must login again when arriving at the login page,
    # even if already logged in previously.
    reset_session

    # Get username and password
    username = params[:user_from_login]
    pw_from_login = params[:pw_from_login]

    # Get password from database for entered username.  
    # If password from database matches the entered password,
    # store true in session variable so user need not login again.
    if !username.blank?
    	    pw_array = LoginInfo.find(:all, 
      	      :conditions => ["username = ?", username])
      encoded_pw = Digest::SHA2.hexdigest(pw_from_login)	
      if pw_array.length > 0
      	pw_from_db = pw_array[0].password
        if pw_from_db == encoded_pw
          session[:logged_in] = true
          redirect_to :controller => '/customers' 
        end
      end
    end
  end

  def logout

    # If user logs out from any page,
    # reset session variable to false.
    reset_session

    # Go back to login again.
    redirect_to :controller => 'login', :action => 'login_page'

  end 

end