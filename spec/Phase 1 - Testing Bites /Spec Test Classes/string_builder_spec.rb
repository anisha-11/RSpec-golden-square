require "string_builder"

RSpec.describe StringBuilder do
    it "gives an empty string" do
        string_builder = StringBuilder.new
        result = string_builder.output
        expect(result).to eq "" 
    end

    it "adds a string to another string" do
        string_builder = StringBuilder.new
        string_builder.add("Hi")
        result = string_builder.output
        expect(result).to eq "Hi"
    end 

    it "returns the string length" do
        string_builder = StringBuilder.new
        result = string_builder.size
        expect(result).to eq 0
    end
end