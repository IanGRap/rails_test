class TasksController < ApplicationController
  include ApplicationHelper

  def new
    @task = Task.new
  end

  def create
    @task = current_project.tasks.build(task_params)
    if @task.save
      #successful save
      redirect_to current_project
    else
      #error
      render 'new'
    end
  end

  private

    def task_params
      params.require(:task).permit(:name, :description)
    end
end
