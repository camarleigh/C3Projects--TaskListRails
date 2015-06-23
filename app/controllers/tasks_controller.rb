class TasksController < ApplicationController
  
  def index # GET tasks/ show me a list of all tasks
   @tasks = Task.all 
  end

  def show #GET one task/ show me this one particluar task, by id
   @task = Task.find(params[:id])
  end

  def edit #GET one task to modify.
   @task = Task.find(params[:id])   
  end

  def update #PATCH this updated task to the db
    @task = Task.find(params[:id]) 
    @task.task_name = create_params[:task][:task_name]
    @task.task_description = create_params[:task][:task_description]
    @task.person_id = create_params[:task][:person_id]
    @task.task_started = Time.now
    @task.save
    
    redirect_to(root_url) 
  end

  def new #GET new task/ 
    @task = Task.new
  end

  def create #POST new task
    @task = Task.new(create_params[:task])
    @task.task_started = Time.now
    @task.save

    redirect_to(root_url)
  end

  def destroy #DELETE a particular task
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to(root_url)
  end

  def complete
    @task = Task.find(params[:id])
    @task.task_completed = Time.now
    @task.save

    redirect_to(root_url)
  end


  private

  def create_params                                
    params.permit(task:[:id, :task_name, :task_description, :task_completed, :task_started, :person_id])
  end
end



  