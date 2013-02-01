class Login1Controller < ApplicationController
 
  require 'digest/sha2'

  def login_page  
 
    # User must login again when arriving at the login page,
    # even if already logged in previously.
    reset_session

    # Get username and password
    username = params[:user_from_login1]
    pw_from_login = params[:pw_from_login1]

    # Get password from database for entered username.  
    # If password from database matches the entered password,
    # store true in session variable so user need not login again.
    if !username.blank?
    	    pw_array = LoginInfo1.find(:all, 
      	      :conditions => ["username = ?", username])
      encoded_pw = Digest::SHA2.hexdigest(pw_from_login)	
      if pw_array.length > 0
      	pw_from_db = pw_array[0].password
        if pw_from_db == encoded_pw
          session[:logged_in] = true
          redirect_to :controller => '/oneyear_customers' 
        end
      end
    end
  end

  def logout

    # If user logs out from any page,
    # reset session variable to false.
    reset_session

    # Go back to login again.
    redirect_to :controller => 'login1', :action => 'login_page'

  end 
end
