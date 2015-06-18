def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { task_name: "Buy lots of gin", task_description: "Every pool party needs gin.", task_completed: random_time },
  { task_name: "Secure a pool", task_description: "Every pool party needs gin." },
  { task_name: "Make guacamole", task_description: "Glad I have an avacado tree.", task_completed: random_time },
  { task_name: "Start a Spotify List", task_description: "Need tunes for the party." },
  { task_name: "Share Spotify Pool Party List Access", task_description: "The more tunes the bettah.", task_completed: random_time },
  { task_name: "High Five Somebody You Don't Know", task_description: "Include yourself.", task_completed: random_time },
  { task_name: "Invite ALLLL the Adies", task_description: "Cohort 0 + 1 + 2 = FUN!", task_completed: random_time },
  { task_name: "Call Mom", task_description: "Invite her too!" },
  { task_name: "Pre-order Pizza", task_description: "Ask Adies for preferences." },
  { task_name: "Nap.", task_description: "Planning a pool party is freakin' hard!", task_completed: random_time }
]

tasks.each do |task|
  Task.create task
end

