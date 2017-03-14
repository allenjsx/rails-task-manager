class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task_params = params.require(:task).permit(:name, :details)
    task = Task.new({ name: params[:name], details: params[:details] })
    task.save
    redirect_to tasks_path(task)
  end

  def edit

  end

  def update
    @task = Task.find(params[:id])
    @task.update({ name: params[:name], details: params[:details] })
    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
