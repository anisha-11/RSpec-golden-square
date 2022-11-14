require "music_library"

RSpec.describe MusicLibrary do 
  context "initially" do 
    it "is empty" do 
      music_library = MusicLibrary.new 
      result = music_library.all
      expect(result).to eq []
    end 

    it "responds to search with an empty list" do 
      music_library = MusicLibrary.new 
      result = music_library.search_by_title("hello")
      expect(result).to eq []
    end 
  end 
end 