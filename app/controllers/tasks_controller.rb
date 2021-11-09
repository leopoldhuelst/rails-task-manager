class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(strong_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    @task = Task.find(id)
    @task.update(strong_params)

    redirect_to task_path(@task.id)
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy

    redirect_to tasks_path
  end

  private

  def strong_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
