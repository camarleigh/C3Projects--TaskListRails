class AddPersonIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :person, :id
    add_foreign_key :tasks, :people
  end
end
