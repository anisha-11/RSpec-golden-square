require "diary_tracker"
require "diary_entry"
require "todo"

RSpec.describe "integration" do 
  it "returns task entries" do 
    diary_tracker = DiaryTracker.new 
    task_1 = Todo.new("shower")
    task_2 = Todo.new("brush hair")
    diary_tracker.add_task(task_1)
    diary_tracker.add_task(task_2)
    expect(diary_tracker.task_list).to eq [task_1, task_2]
  end 

  it "returns diary entries" do 
    diary_tracker = DiaryTracker.new 
    diary_entry_1 = DiaryEntry.new("entry_1", "hello")
    diary_entry_2 = DiaryEntry.new("entry_2", "hello again")
    diary_tracker.add_entry(diary_entry_1) 
    diary_tracker.add_entry(diary_entry_2)
    expect(diary_tracker.diary_list).to eq [diary_entry_1, diary_entry_2]
  end
    
  it "returns another diary entry" do 
    diary_tracker = DiaryTracker.new 
    diary_entry_1 = DiaryEntry.new("title", "contents")
    diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
    diary_entry_3 = DiaryEntry.new("title 3", "contents 3")
    diary_tracker.add_entry(diary_entry_1) 
    diary_tracker.add_entry(diary_entry_2)
    diary_tracker.add_entry(diary_entry_3)
    expect(diary_tracker.diary_list).to eq [diary_entry_1, diary_entry_2, diary_entry_3]
  end 

  it "returns the best diary entry" do 
    diary_tracker = DiaryTracker.new 
    diary_entry_1 = DiaryEntry.new("title", "contents")
    diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
    diary_entry_3 = DiaryEntry.new("title 3", "contents 3")
    diary_tracker.add_entry(diary_entry_1) 
    diary_tracker.add_entry(diary_entry_2)
    diary_tracker.add_entry(diary_entry_3)
    expect(diary_tracker.find_best_entry(1,1)).to eq diary_entry_1
  end 

  it "returns phone numbers in the entry" do 
    diary_tracker = DiaryTracker.new 
    diary_entry_1 = DiaryEntry.new("title", "07123456789")
    diary_entry_2 = DiaryEntry.new("title 2", "07987654321")
    diary_tracker.add_entry(diary_entry_1)
    diary_tracker.add_entry(diary_entry_2)
    expect(diary_tracker.phone_number_list).to eq ["07123456789", "07987654321"]
  end 
end 
