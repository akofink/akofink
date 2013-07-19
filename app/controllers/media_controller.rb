class MediaController < ApplicationController
  def index
    @title = "Media"
    @new_media = Media.new
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  def create
    media = Media.new(medium_params)
    if media.save
      log "Created New Media Entry: #{media}"
    end
    redirect_to media_path
  end

  def destroy
    media = Media.find(medium_params)
    if media.delete
      log "Destroyed Media Entry: #{media}"
    end
    redirect_to media_path
  end

  private

  def medium_params
    params.allow(:title, :content)
  end
end
