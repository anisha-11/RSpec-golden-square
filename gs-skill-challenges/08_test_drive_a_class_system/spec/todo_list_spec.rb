require "todo_list"

RSpec.describe TodoList do 
  it "returns an empty list" do 
    todo_list = TodoList.new 
    expect(todo_list.incomplete).to eq []
  end 

  it "returns an empty list again" do 
    todo_list = TodoList.new 
    expect(todo_list.complete).to eq []
  end 
end 