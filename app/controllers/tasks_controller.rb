class TasksController < ApplicationController
  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    Task.create!(create_params)
    redirect_to tasks_path
  end

  # GET /tasks/:id/edit
  def edit
    @task = Task.find(params[:id])
  end

  # PATCH /tasks/:id
  def update
    @task = Task.find(params[:id])
    @task.update!(update_params)

    redirect_to task_path(@task)
  end

  private

  def create_params
    params.require(:task).permit(
      :title,
      :details
    )
  end

  def update_params
    params.require(:task).permit(
      :title,
      :details,
      :completed
    )
  end
end
