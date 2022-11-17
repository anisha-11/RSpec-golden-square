require "diary_tracker"

RSpec.describe DiaryTracker do 
  context "returning all empty arrays that occur" do
    it "returns empty array for diary" do 
      diary_tracker = DiaryTracker.new 
      expect(diary_tracker.diary_list).to eq []
    end 

    it "returns empty array for tasks" do 
      diary_tracker = DiaryTracker.new 
      expect(diary_tracker.task_list).to eq []
    end 

    it "returns empty array for phone numbers" do 
      diary_tracker = DiaryTracker.new 
      expect(diary_tracker.phone_number_list).to eq []
    end 
  end 
end 
