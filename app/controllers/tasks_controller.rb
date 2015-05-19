class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :toggle]

  def index
    @tasks = Task.all
    @task  = Task.new
    @open_tasks = Task.open_tasks
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.save
    @open_tasks = Task.open_tasks
  end

  def destroy
    @task.destroy
    @open_tasks = Task.open_tasks
  end

  def toggle
    @task.closed_at = @task.closed? ? nil : Time.now
    @task.save
    @open_tasks = Task.open_tasks
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:what)
  end
end
