require "diary"
require "diary_entry"

RSpec.describe "diary integration" do 
  it " lists out added entries" do 
    diary = Diary.new 
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    result = diary.all
    expect(result).to eq [diary_entry_1, diary_entry_2]
  end 

  describe "word counting behaviour" do 
    it "counts diary entry contents" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      result = diary.count_words
      expect(result).to eq 5
    end 
  end

  describe "reading time behaviour" do 
    it "fails where wpm is 0" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
      diary.add(diary_entry_1)
      expect{ diary_entry.reading_time(0) }.to raise_error "WPM must be positive"
    end

    it "calculates reading time for all entries where it fits exactly" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end 

    it "calculates reading time for all entries where it does not fit exactly" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end 
  end 

  describe " best reading time entry behaviour" do 
    context "where we have just one readable readable entry in the time" do 
      it "returns that entry" do
        diary = Diary.new 
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry_1
      end 
    end 

    context "where we just have one entry and unreadable in the time" do 
      it "returns nil" do 
        diary = Diary.new 
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end 

    context "where we have multiple entries" do 
      it "returns the longest entry a user could read in this time" do 
        diary = Diary.new 
        best_entry = DiaryEntry.new("my title", "one two")
        diary.add((DiaryEntry.new("my title", "one")))
        diary.add(best_entry)
        diary.add((DiaryEntry.new("my title", "one two three")))
        diary.add((DiaryEntry.new("my title", "one two three four")))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end 
    end 
  end 
end 

 