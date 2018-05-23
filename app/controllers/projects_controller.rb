class ProjectsController < ApplicationController

  include ApplicationHelper

  def new
    @project = Project.new
  end

  def show
    set_current_project(params[:format])
    @project = Project.find(params[:format])
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
    @project = current_project
  end

  private

    def project_params
      params.require(:project).permit(:title, :description)
    end

end
