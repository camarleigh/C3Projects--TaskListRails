class PeopleController < ApplicationController

  def index # GET people/ show me a list of all people
   @people = Person.all 
  end

  def show
    def show #GET one person/ show me this one particluar person, by name
   @task = Task.find(params[:name])
  end



end
