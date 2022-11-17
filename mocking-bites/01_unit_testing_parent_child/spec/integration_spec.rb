require "music_library"
require "track"

RSpec.describe "integration" do 
  it " adds two tracks to the library" do 
    music_library = MusicLibrary.new 
    track_1 = Track.new("title 1", "artist 1") 
    track_2 = Track.new("title 2", "artist 2") 
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end 

  it "matches 1 out of 2 tracks" do 
    music_library = MusicLibrary.new 
    track_1 = Track.new("TITLE 1", "artist 1") 
    track_2 = Track.new("title 2", "artist 2") 
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("TITLE")).to eq [track_1]
  end 

  it "matches 0 tracks" do 
    music_library = MusicLibrary.new 
    track_1 = Track.new("TITLE 1", "artist 1") 
    track_2 = Track.new("title 2", "artist 2") 
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("nothing")).to eq []
  end 
end 