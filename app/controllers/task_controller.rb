class TaskController < ApplicationController
  
  def index
    @tasks = Task.all
    
  end

  def show
    @tasks = Task.find(:id)
  end

end