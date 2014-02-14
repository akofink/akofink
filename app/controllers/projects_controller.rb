class ProjectsController < ApplicationController
  def index
    markdown
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find_by(id: params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:success] = 'Project was successfully created.'
      redirect_to Project
    else
      render action: 'new'
    end
  end

  def update
    @project = Project.find_by(id: params[:id])
    if @project.update(project_params)
      flash[:success] = 'Project was successfully updated.'
      redirect_to Project
    else
      render action: 'edit'
    end
  end

  def destroy
    if Project.find_by(id: params[:id]).try :destroy
      flash[:info] = 'Project was successfully destroyed.'
      redirect_to projects_url
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(:description)
  end

  def action_allowed?
    case params[:action]
    when 'new', 'create', 'edit', 'update', 'destroy'
      current_user.try :admin?
    when 'index'
      true
    end
  end
end
