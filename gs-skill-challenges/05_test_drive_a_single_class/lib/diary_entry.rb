class DiaryEntry
    def initialize(title, contents) # title, contents are strings
     @title = title 
     @contents = contents 
     @counter = -1
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      word_count = contents.split(" ").length
      return word_count
    end
  
    def reading_time(wpm) 
        time = count_words / wpm
        return time 
    end
  
    def reading_chunk(wpm, minutes) 
      chunk_length = wpm * minutes
      words = contents().split 

      @counter +=1
      previous_words_read = @counter * chunk_length

      return words[previous_words_read...chunk_length + previous_words_read].join(" ")
    end
  end