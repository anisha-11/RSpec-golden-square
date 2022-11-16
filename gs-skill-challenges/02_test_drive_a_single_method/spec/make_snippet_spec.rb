# Design
# A method called make_snippet that takes a string as an argument and returns 
# the first five words and then a '...' if there are more than that.
require "make_snippet"

RSpec.describe "make_snippet method" do 
  context "given an empty string" do 
    it "returns an empty string" do 
      result = make_snippet(" ")
      expect(result).to eq " "
    end 
  end

  context "given a string of 4 words" do 
    it "returns the 4 words" do 
      result = make_snippet("string of four words")
      expect(result).to eq "string of four words"
    end 
  end

  context "given a string of 5 words" do 
    it "returns the 5 words" do 
      result = make_snippet("another string of five words")
      expect(result).to eq "another string of five words"
    end
  end

  context "given a string of 6 words" do 
    it "returns first 5 words with ..." do 
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five ..."
    end 
  end
end 
