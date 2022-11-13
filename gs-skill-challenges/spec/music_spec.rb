require "music"

RSpec.describe Music do 
    it "returns an empty list" do 
        list = Music.new 
        result = list.list
        expect(result).to eq []
    end 

    it "adds 1 song to the list" do 
        list = Music.new 
        list.add("Let me love you")
        result = list.list 
        expect(result).to eq ["Let me love you"]
    end 

    it "adds another song to the list" do 
        list = Music.new 
        list.add("Let me love you")
        list.add("Waka Waka")
        result = list.list 
        expect(result).to eq ["Let me love you", "Waka Waka"]
    end
end 
    