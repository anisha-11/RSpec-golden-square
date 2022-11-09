require "report_length"
RSpec.describe "report_length method" do
    it "returns a message of the string length" do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long."
    end

    it "returns message of string with a space inbetween" do 
        result = report_length("hello Anisha")
        expect(result).to eq "This string was 12 characters long."
    end

    it "returns message of string with punctuation" do
        result = report_length("Hello!")
        expect(result).to eq "This string was 6 characters long."
    end

    it "returns message of a string with space and punctuation" do
        result = report_length("hello Anisha!")
        expect(result).to eq "This string was 13 characters long."
    end
    
end
