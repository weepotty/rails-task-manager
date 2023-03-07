class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  def show
    @task
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
    @task
  end

  # PATCH /tasks/:id
  def update
    @task.update!(update_params)
    redirect_to tasks_path
  end

  # DELETE /tasks/:id
  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

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
