class BlogsController < ApplicationController
  def index
    @title = 'Blog'
    @blogs = Blog.last(3).reverse
    markdown
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
    flash[:info] = "Blog #{blog.id} destroyed."
    redirect_to root_path
  end

  def edit
    blog
  end

  def update
    if blog.update(blog_params)
      flash[:success] = "Post successfully updated."
      redirect_to blog
    else
      flash[:warning] = "Cannot save post."
      redirect_back
    end
  end

  def show
    blog
    markdown
  end

  private

  def markdown
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def blog
    @blog ||= (params[:id] && Blog.find(params[:id])) ||
      Blog.new(blog_params)
  end

  def action_allowed?
    action == 'index' || (current_user && current_user.admin?)
  end
end
