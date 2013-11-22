class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:session][:username]
    user = User.find_by_name username
    if user.try :valid_password?, params[:session][:password]
      set_current_user user
      flash[:success] = 'Logged in'
      redirect_to '/'
    else
      current_user = nil
      flash[:warning] = 'Invalid username/password combination'
      redirect_to '/login'
    end
  end

  def destroy
    reset_session
    flash[:info] = 'Logged out'
    redirect_to '/login'
  end

  private

  def action_allowed?
    case action
    when "new", "create"
      redirect_to '/logout' if current_user
      true
    when "destroy"
      current_user
    end
  end
end
