class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:session][:username]
    user = User.find_by_name username
    if user.try :valid_password?, params[:session][:password]
      session[:user] = user
      flash[:success] = 'Logged in'
      redirect_to '/'
    else
      session[:user] = nil
      flash[:warning] = 'Invalid username/password combination'
      redirect_to '/login'
    end
  end

  def destroy
    reset_session
    redirect_to '/login'
  end

  private

  def action_allowed?
    ['create', 'new'].include?(action) || current_user.admin?
  end
end
