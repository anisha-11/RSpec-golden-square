class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task 
  end

  def format
    return (@task.complete? ? "- [x] " : "- [ ] ") + @task.title
  end
end