require "todo"
require "todo_list"

RSpec.describe "todo integration" do 
  describe "incomplete method" do 
    it " lists an incomplete entry" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq [todo_1]
    end 

    it "lists two incomplete entries" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo_1, todo_2]
    end 

    it "lists one incomplete entry" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done!
      expect(todo_list.incomplete).to eq [todo_2]
    end 

    it "lists one incomplete entry" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done!
      todo_2.mark_done!
      expect(todo_list.incomplete).to eq []
    end 

  end
  
  describe "complete method" do 
    it "lists a completed entry" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_list.add(todo_1)
      todo_1.mark_done!
      expect(todo_list.complete).to eq [todo_1]
    end 

    it "only shows the one completed entry" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done!
      expect(todo_list.complete).to eq [todo_1]
    end 

    it "lists 0 complete entries" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.complete).to eq []
    end 
  end 

  describe "give up method" do 
    it "lists all entries as complete" do 
      todo_list = TodoList.new 
      todo_1 = Todo.new("brush")
      todo_2 = Todo.new("bath")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end
  end 
end 