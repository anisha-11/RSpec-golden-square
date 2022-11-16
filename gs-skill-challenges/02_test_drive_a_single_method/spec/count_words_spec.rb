# Design
# A method called count_words that takes a string as an 
# argument and returns the number of words in that string.

require "count_words.rb"

RSpec.describe "count_words method" do 
    it "returns 0 when string is empty" do 
        expect(count_words("")).to eq 0
    end 

    it "returns 1 when string has a word" do 
        expect(count_words("one")).to eq 1
    end 

    
end 