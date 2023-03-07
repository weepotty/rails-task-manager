class TasksController < ApplicationController

  #GET /tasks
  def index
    @tasks = Task.all
  end

  #GET /tasks/:id
  def show
    @task = Task.find(params[:id])
  end
end
