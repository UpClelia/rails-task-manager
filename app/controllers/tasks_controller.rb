class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

end
