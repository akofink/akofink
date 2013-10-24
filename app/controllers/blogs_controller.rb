class BlogsController < ApplicationController
  def index
    @title = 'Blog'
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @new_blog_post = Blog.new
  end

  def create
    if blog.save
      log "Created New Blog Entry: #{blog}"
    end
    redirect_to root_path
  end

  def destroy
    if blog.delete
      log "Destroyed Blog Entry: #{blog}"
    end
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog).permit(:content, :title)
  end

  def blog
    @blog ||= (params[:id] && Blog.find(params[:id])) || Blog.new(blog_params)
  end

  def action_allowed?
    action == 'index' || current_user
  end
end
