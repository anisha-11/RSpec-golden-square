require "track"

RSpec.describe Track do 
  it "constructs" do 
    track = Track.new("my_title", "my_artist")
    result = track.title 
    expect(result).to eq "my_title"
    expect(track.artist).to eq "my_artist"
  end 

  describe "#format" do 
    it "formats title and artist into a string" do 
      track = Track.new("my_title", "my_artist")
      result = track.formats
      expect(result).to eq "my_title by my_artist"
    end 
  end 
end 