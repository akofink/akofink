include ApplicationHelper

class ApplicationController < ActionController::Base
  protect_from_forgery

  include Authorization
  before_action :authorize

  def current_user
    @current_user ||= session[:user]
  end
  helper_method :current_user

  def redirect_back(args = {})
    args[:default] ||= :root
    redirect_to request.env['HTTP_REFERER'] ? :back : args[:default],
      args
  end
end
