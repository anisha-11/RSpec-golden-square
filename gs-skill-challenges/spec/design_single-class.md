# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class TodoList 
  def initialize
  end 

  def add(task)
  end

  def list
  end 

  def complete(task)
  end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

todo_list = TodoList.new 
todo_list.list

todo_list = TodoList.new 
todo_list.add("Put clothes in dryer")
todo_list.list 

todo_list = TodoList.new 
todo_list.add("Put clothes in dryer")
todo_list.add("Fold clothes")
todo_list.list

todo_list = TodoList.new 
todo_list.add("Put clothes in dryer")
todo_list.add("Fold clothes")
todo_list.complete("Put clothes in dryer")
todo_list.list

todo_list = TodoList.new
todo_list.add("Fold clothes")
todo_list.complete("Fold dishes")
todo_list.list #should fail
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._