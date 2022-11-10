require "diary_entry"

RSpec.describe DiaryEntry do 
  it "returns title" do 
    diary_entry = DiaryEntry.new("title", "contents")
    result = diary_entry.title
    expect(result).to eq "title"
  end 

  it "returns contents" do 
    diary_entry = DiaryEntry.new("title", "contents")
    result = diary_entry.contents
    expect(result).to eq "contents"
  end

  it "returns word count" do 
    diary_entry = DiaryEntry.new("title", "one two three")
    result = diary_entry.count_words
    expect(result).to eq 3
  end

  it "number of minutes to read contents" do 
    diary_entry = DiaryEntry.new("title", "one two three four")
    result = diary_entry.reading_time(2)
    expect(result).to eq 2
  end 

  it "returning first chunk of contents" do 
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight")
    result = diary_entry.reading_chunk(2,2)
    expect(result).to eq "one two three four"
  end 

  it "returning second chunk of contents" do 
    diary_entry = DiaryEntry.new("title", "one two three four five six seven eight")
    diary_entry.reading_chunk(2,2)
    result = diary_entry.reading_chunk(2,2)
    expect(result).to eq "five six seven eight"
  end
end 