class TasksController < ApplicationController
  include ApplicationHelper

  def new
    @project = Project.find(params[:project_id])
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build(task_params)
    if @task.save
      #successful save
      redirect_to @project
    else
      #error
      render 'new'
    end
  end

  def show
    @task = Task.find(params[:id])
    @project = Project.find(@task.project_id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @project = Project.find(@task.project_id)
    @task.destroy
    redirect_to @project
  end

  private

    def task_params
      params.require(:task).permit(:name, :description)
    end
end
