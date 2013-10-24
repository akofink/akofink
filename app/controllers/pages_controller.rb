class PagesController < ApplicationController
  def projects
    @title = "Projects"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def albums
    @title = "Albums"
  end

  private

  def action_allowed?
    true
  end
end
