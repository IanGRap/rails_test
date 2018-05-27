class ProjectsController < ApplicationController

  include ApplicationHelper

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @user = User.find(@project.user_id)
    @tasks = @project.tasks
  end

  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.build(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  private

    def project_params
      params.require(:project).permit(:title, :description)
    end

end
