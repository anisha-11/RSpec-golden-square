require "diary_entry"

RSpec.describe DiaryEntry do 
  it "constructs" do 
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end 

  describe "#reading_time" do 
    it "counts words in contents" do 
      diary_entry = DiaryEntry.new("my_title", "one two three four")
      expect(diary_entry.reading_time).to eq 4
    end

    it "returns 0 when contents is empty" do 
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.reading_time).to eq 0
    end

    it "returns 1 when contents is 1 word" do 
      diary_entry = DiaryEntry.new("my_title", "one")
      expect(diary_entry.reading_time).to eq 1
    end
  end 

  describe "#reading_time" do 
    it "fails if wpm is 0" do 
      diary_entry = DiaryEntry.new 
      expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive"
    end 

    it "returns 0 if contents is empty" do 
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.reading_time(2)).to eq 0
    end

    it "returns 1 when contents is 1 word" do 
      diary_entry = DiaryEntry.new("my_title", "one")
      expect(diary_entry.reading_time(2)).to eq 1
    end

    it "returns a reading time for the contents" do 
      diary_entry = DiaryEntry.new("my_title", "one two three four five")
      expect(diary_entry.reading_time(2)).to eq 3
    end
  end 
end 