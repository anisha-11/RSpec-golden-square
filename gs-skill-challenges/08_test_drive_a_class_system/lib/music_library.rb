class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) # track is an instance of Track
      @tracks << track
    end
  
    def all
      return @tracks
    end
    
    def search_by_title(keyword) # keyword is a string
      return @tracks.select do |track|
        track.title.include?(keyword)
      end
      # Returns a list of tracks with titles that include the keyword
    end
  end 
  