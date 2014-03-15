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

  class HTMLWithPygments < Redcarpet::Render::VelvetRope
    def block_code(code, language)
      sha = Digest::SHA1.hexdigest(code)
      Rails.cache.fetch ["code", language, sha].join('-') do
        Pygments.highlight(code, lexer: language)
      end
    end
  end

  def markdown
    @renderer ||= HTMLWithPygments.new(
      emoji: true,
    )

    @markdown ||= Redcarpet::Markdown.new(
      @renderer,
      tables: true,
      fenced_code_blocks: true,
      autolink: true,
      disable_indented_code_blocks: true,
      space_after_headers: true,
      superscript: true,
      underline: true,
      quote: true,
      footnotes: true,
    )
  end
end
