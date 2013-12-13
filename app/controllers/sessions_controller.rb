class SessionsController < ApplicationController
  
  before_filter :logged_in?, only:[:destroy]
  before_filter :check_logged_in, only:[:new]
  
  def new

  end
  
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    
    if @user
      login(@user)
    else
      flash[:errors] = ["Invalid Login"]
      redirect_to new_sessions_url
    end
    
  end
  
  def destroy
    logout
  end

  def check_logged_in
    if self.current_user
    redirect_to root_url
    end
  end

  
end
