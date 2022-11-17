require "music_library"

RSpec.describe MusicLibrary do 
  it " adds two tracks to the library" do 
    music_library = MusicLibrary.new 
    track_1 = (double(:fake_track)) 
    track_2 = (double(:fake_track)) 
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end 

  it "matches 1 out of 2 tracks" do 
    music_library = MusicLibrary.new 
    track_1 = (double(:fake_track, matches?: true))
    track_2 = (double(:fake_track, matches?: false))
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("TITLE")).to eq [track_1]
  end 

  it "matches 0 tracks" do 
    music_library = MusicLibrary.new 
    track_1 = (double(:fake_track, matches?: false))
    track_2 = (double(:fake_track, matches?: false))
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("nothing")).to eq []
  end 
end 