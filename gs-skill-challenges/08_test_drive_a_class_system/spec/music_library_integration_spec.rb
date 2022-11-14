require "music_library"
require "track"

RSpec.describe "Music Library integration" do 
  context "when we add multiple tracks to the library" do 
    it "comes back in list" do 
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2) 
      result = music_library.all 
      expect(result).to eq [track_1, track_2]
    end 
  end 

  context "with some tracks added" do 
    it "searches for those tracks by full title" do 
      music_library = MusicLibrary.new 
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2) 
      result = music_library.search_by_title("my_title_2")
      expect(result).to eq [track_2]
    end 

    it "searches for those tracks by partial title" do 
      music_library = MusicLibrary.new 
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2) 
      result = music_library.search_by_title("title_2")
      expect(result).to eq [track_2]
    end 
  end

  context "when no matching tracks" do 
    it "yields empty list when searchiing" do 
      music_library = MusicLibrary.new 
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2) 
      result = music_library.search_by_title("hello")
      expect(result).to eq []
    end 
  end 
end 
