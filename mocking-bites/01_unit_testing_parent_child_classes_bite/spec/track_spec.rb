require "track" 

RSpec.describe Track do 
  it "returns true when matching the title" do 
    track = Track.new("title", "artist")
    expect(track.matches?("title")).to eq true 
  end 

  it "returns true when matching the artist" do 
    track = Track.new("title", "artist")
    expect(track.matches?("artist")).to eq true 
  end

  it "returns false when neither match" do 
    track = Track.new("title", "artist")
    expect(track.matches?("nothing")).to eq false
  end 
end 