class PagesController < ApplicationController
  def blog
    @title = "Blog"
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

  def albums
    @title = "Albums"
  end
end
