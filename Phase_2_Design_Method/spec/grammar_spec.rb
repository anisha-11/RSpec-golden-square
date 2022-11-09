require "grammar"

RSpec.describe "grammar method" do 
    it "returns true with capital letter and full stop" do 
        expect(grammar("Hello.")).to eq true
    end 
end