class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:session][:username]
    user = User.find_by_name username
    if user.try :valid_password?, params[:session][:password]
      session[:authenticated] = true
      flash[:success] = 'Logged in'
      redirect_to '/'
    else
      session[:authenticated] = false
      flash[:warning] = 'Invalid username/password combination'
      redirect_to '/login'
    end
  end

  def destroy
    reset_session
    redirect_to '/login'
  end
end
