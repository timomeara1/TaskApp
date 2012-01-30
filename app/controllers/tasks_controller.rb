class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
    @task = Task.new
    
  end
  
  def show
    @task = Task.find params[:id]

  end
  
  def edit
    @task = Task.find params[:id]
  
  end

  def update
    @task = Task.find_by_id(params[:id])
    @task.update_attributes (params[:task])
    redirect_to task_url(@task.id)
  end
  
  def create
  
     Task.create params[:task]
     
     redirect_to tasks_url
      
   end
   
  def destroy
    
    @task =Task.find_by_id(params[:id])
        @task.destroy
        redirect_to tasks_url
    end
    
   
end
