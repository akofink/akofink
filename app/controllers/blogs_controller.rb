class BlogsController < ApplicationController
  def index
    @title = 'Blog'
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @new_blog_post = Blog.new
  end

  def create
    blog = Blog.new(params[:blog])
    if blog.save
      log "Created New Blog Entry: #{blog}"
    end
    redirect_to root_path
  end

  def destroy
    blog = Blog.find(params[:id])
    if blog.delete
      log "Destroyed Blog Entry: #{blog}"
    end
    redirect_to root_path
  end
end
