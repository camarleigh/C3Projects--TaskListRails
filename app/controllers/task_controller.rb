class TaskController < ApplicationController
  
  def index
    @tasks = Task.all
    
  end

  def show
    @show_task = Task.find(params[:id])

  end

  def new
    @add_task = Task.new
  end
end
 # def complete?
  # @complete = Task.find(params[:complete_task])
  # if @complete.?
  #   @tasks = Task.all
  #   flash.now[:alert] = <%= image_tag "happy.gif", alt: "Happy Dance" %>
  #   render "index"
  # end