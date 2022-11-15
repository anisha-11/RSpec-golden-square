class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list << todo 
  end

  def incomplete
    @list.filter do |todo|
      todo if todo.done?  == false 
    end 
  end

  def complete
    @list.filter do |todo|
      todo if todo.done?  == true
    end 
  end

  def give_up!
    @list.each do |todo|
      todo.mark_done!
    end
  end
end