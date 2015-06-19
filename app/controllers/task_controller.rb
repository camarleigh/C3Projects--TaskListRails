class TaskController < ApplicationController
  
  def index # GET tasks/ show me a list of all tasks
    @tasks = Task.all
    
  end

  def show #GET one task/ show me this one particluar task, by id
    @task = Task.find(params[:id])

  end

  def edit #GET one task to modify.
    @task =  Task.find(params[:id])
  end

  def update #PUT this updated task to the db
    @task = Task.find(params[:id])
    

  end


  def new #GET new task/ 
    @task = Task.new
    
  end


  def create #POST new task
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to(root_url)
  end

  def destroy #DELETE a particular task
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to(root_url)
  end


  private


  def create_params                                
    params.permit(task:[:task_name, :task_description])
  end
end



  