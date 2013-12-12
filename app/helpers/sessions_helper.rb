module SessionsHelper
  
  def current_user
    User.find_by_session_token(session[:session_token])
  end

  def login(user)
    @current_user = user
    session[:session_token] = user.session_token
    redirect_to root_url
  end
  
  def logout
    self.current_user.reset_session_token!
    current_user = nil
    session[:session_token] = nil
    redirect_to new_sessions_url
  end
  
  def logged_in?
    unless self.current_user
      flash[:errors] = ["You must be logged in to see this page"]
      redirect_to new_sessions_url
    end
  end
  
end
