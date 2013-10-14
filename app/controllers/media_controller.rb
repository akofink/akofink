class MediaController < ApplicationController
  def index
    @title = "Media"
    @new_medium = medium
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  def create
    medium = Medium.new(medium_params)
    if medium.save
      log "Created New Media Entry: #{medium}"
    end
    redirect_to '/media'
  end

  def destroy
    if medium.delete
      log "Destroyed Media Entry: #{medium}"
    end
    redirect_to '/media'
  end

  private

  def medium_params
    params.permit(:medium).permit(:title, :content)
  end

  def medium
    @medium ||= (params[:id] && Medium.find(params[:id])) || Medium.new(medium_params)
  end
end
