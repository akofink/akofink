module Authorization
  def authorize
    unless authorized?
      flash[:warning] = 'Permission denied'
      redirect_back
    end
  end

  def authorized?
    action_allowed?
  end

  def action_allowed?
    false
  end

  def action
    params[:action]
  end

  def controller
    params[:controller]
  end
end
