require "string_builder"

RSpec.describe StringBuilder do
    it "gives an empty string" do
        string_builder = StringBuilder.new
        result = string_builder.output
        expect(result).to eq "" 
    end
end