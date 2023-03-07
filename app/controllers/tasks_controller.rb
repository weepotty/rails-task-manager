class TasksController < ApplicationController

  #GET /tasks
  def index
    @tasks = Task.all
  end

  #GET /tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  #GET /tasks/new
  def new
    @task = Task.new
  end

  #POST /tasks
  def create

  end
end
