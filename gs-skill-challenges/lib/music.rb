class Music
    def initialize 
        @list = []
    end 
    
    def list
        return @list 
    end 

    def add(song)
        @list << song unless @list.include?(song)
    end 
end 
