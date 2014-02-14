class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery

  include Authorization
  before_action :authorize

  def set_current_user(user)
    session[:user_id] = user && user.id
  end

  def current_user
    @current_user ||= session[:user_id] && User.find(session[:user_id])
  end
  helper_method :current_user

  def redirect_back(args = {})
    args[:default] ||= :root
    redirect_to request.env['HTTP_REFERER'] ? :back : args[:default],
      args
  end

  private

  def markdown
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
