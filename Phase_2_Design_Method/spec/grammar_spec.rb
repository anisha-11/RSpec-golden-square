require "grammar"

RSpec.describe "grammar method" do 
    it "returns true with capital letter and full stop" do 
        expect(grammar("Hello.")).to eq true
    end 

    it "returns false with no capital letter or full stop" do
        expect(grammar("hello")).to eq false
    end

    it "returns false with only a capital letter" do
        expect(grammar("Hello")).to eq false
    end

    it "returns false with only a full stop" do
        expect(grammar("hello.")).to eq false
    end

    it "returns false with exclamation mark and no capital letter" do
        expect(grammar("hello world!")).to eq false
    end

    it "returns true with capital letter and exclamation mark" do
        expect(grammar("Hello world!")).to eq true
    end

    it "returns true with capital letter and question mark" do
        expect(grammar("Hello world?")).to eq true
    end
end