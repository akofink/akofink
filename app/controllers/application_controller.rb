include ApplicationHelper

class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_session
    @current_session ||= Session.current
  end
end
