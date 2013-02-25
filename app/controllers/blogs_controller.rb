class BlogsController < ApplicationController
  def index
    @title = 'Blog'
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @new_blog_post = Blog.new
  end

  def create
    Blog.new(params[:blog]).save
    redirect_to root_path
  end
end
