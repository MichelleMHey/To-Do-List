class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
    @list_id = params[:list].nil? ? 0 : params[:list]
  end

  def create
    @task = Task.create( params[:task])
    flash[:notice] = "Your task has now been created!"
    redirect_to :root
  end
end