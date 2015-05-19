class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :toggle]
  before_action :load_open_tasks, except: [:show, :new, :edit]

  def index
    @tasks = Task.all
    @task  = Task.new
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
  end

  def destroy
    @task.destroy
  end

  def toggle
    @task.closed_at = @task.closed? ? nil : Time.now
    @task.save
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def load_open_tasks
    @open_tasks = Task.open_tasks
  end

  def task_params
    params.require(:task).permit(:what)
  end
end
