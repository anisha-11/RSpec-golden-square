require "todo_list"

RSpec.describe TodoList do 
  context "given no tasks" do 
    it "has an empty list" do 
        todo_list = TodoList.new 
        result = todo_list.list
        expect(result).to eq []
    end
  end

  context "given a task" do 
    it "has task in list" do 
        todo_list = TodoList.new 
        todo_list.add("Put clothes in dryer")
        result = todo_list.list 
        expect(result).to eq ["Put clothes in dryer"]
    end
  end

  context "given 2 tasks" do 
    it "has task in list" do 
        todo_list = TodoList.new 
        todo_list.add("Put clothes in dryer")
        todo_list.add("Fold clothes")
        result = todo_list.list
        expect(result).to eq ["Put clothes in dryer", "Fold clothes"]
    end
  end

  context "completed a task" do 
    it "removes task from list" do 
        todo_list = TodoList.new 
        todo_list.add("Put clothes in dryer")
        todo_list.add("Fold clothes")
        todo_list.complete("Put clothes in dryer")
        result = todo_list.list 
        expect(result).to eq ["Fold clothes"]
    end
  end

  context "try to complete a task that does not exist" do 
    it "fails" do 
        todo_list = TodoList.new 
        todo_list.add("Put clothes in dryer")
        result = todo_list.list 
        expect { todo_list.complete("Put person in dryer") }.to raise_error "No such task"
    end 
  end
end 