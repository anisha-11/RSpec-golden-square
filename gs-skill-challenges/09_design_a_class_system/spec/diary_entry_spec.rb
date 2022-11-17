require "diary_entry"

RSpec.describe DiaryEntry do 
  it "returns title" do 
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
  end 

  it "returns contents" do 
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.contents).to eq "contents"
  end 

  it "returns word count of 0 when there are no contents" do 
    diary_entry = DiaryEntry.new("title", "")
    expect(diary_entry.count_words).to eq 0
  end 

  it "returns word count of contents" do 
    diary_entry = DiaryEntry.new("title", "testing word count")
    expect(diary_entry.count_words).to eq 3
  end 

  it "fails" do 
    diary_entry = DiaryEntry.new("title", "testing time taken")
    expect{ diary_entry.reading_time(-1) }.to raise_error "WPM must be positive" 
  end 

  it "returns time taken to read entries" do 
    diary_entry = DiaryEntry.new("title", "testing time taken")
    expect(diary_entry.reading_time(3)).to eq 1 
  end 

  it "returns phone numbers" do 
    diary_entry = DiaryEntry.new("title", "07987654321 07123456789")
    expect(diary_entry.phone_number).to eq ["07987654321", "07123456789"]
  end 
end 