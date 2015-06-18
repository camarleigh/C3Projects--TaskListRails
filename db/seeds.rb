def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { task_name: "The First Task", task_description: "", task_completed: random_time },
  { task_name: "Go to Brunch", task_description: "" },
  { task_name: "Go to Lunch", task_description: "", task_completed: random_time },
  { task_name: "Go to Second Lunch", task_description: "" },
  { task_name: "Play Video Games", task_description: "", task_completed: random_time },
  { task_name: "High Five Somebody You Don't Know", task_description: "", task_completed: random_time },
  { task_name: "Plant Flowers", task_description: "", task_completed: random_time },
  { task_name: "Call Mom", task_description: "" },
  { task_name: "She worries, you know.", task_description: "" },
  { task_name: "Nap.", task_description: "", task_completed: random_time }
]

tasks.each do |task|
  Task.create task
end

