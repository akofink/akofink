class PagesController < ApplicationController
  def index
  end

  def projects
  	@title = "Projects"
  end

  def contact
  	@title = "Contact"
  end

  def about
  	@title = "About"
  end

  def show

  end
end
