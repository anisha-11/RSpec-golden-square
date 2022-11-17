require "todo"

RSpec.describe Todo do 
  it "returns title" do 
    task = Todo.new("shower")
    expect(task.title).to eq "shower"
  end 
e