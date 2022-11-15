require "todo"

RSpec.describe Todo do 
  it "returns a task" do
    todo = Todo.new("brush")
    expect(todo.task).to eq "brush"
  end

  it "marks a test done" do 
    todo_1 = Todo.new("brush")
    todo_1.mark_done!
    expect(todo_1.done?).to eq true 
  end 

  it "returns false when task incomplete" do 
    todo_1 = Todo.new("brush")
    expect(todo_1.done?).to eq false
  end 
end 