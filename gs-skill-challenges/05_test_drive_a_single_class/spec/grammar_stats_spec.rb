require "grammar_stats"

RSpec.describe GrammarStats do 
    it "returns true when text has capital letter and full stop" do
        grammar = GrammarStats.new
        result = grammar.check("Hello.")
        expect(result).to eq true
    end

    it "returns true when text has capital letter and exclamation mark" do 
        grammar = GrammarStats.new 
        result = grammar.check("Hello!")
        expect(result).to eq true 
    end 

    it "returns true when text has capital letter and question mark" do 
        grammar = GrammarStats.new 
        result = grammar.check("Hello?") 
        expect(result).to eq true 
    end

    it "returns false when text only has capital letter" do 
        grammar = GrammarStats.new 
        result = grammar.check("Hello")
        expect(result).to eq false 
    end

    it "returns false when text has no capital letter but includes a full stop" do
        grammar = GrammarStats.new 
        result = grammar.check("hello.")
        expect(result).to eq false
    end 

    it "returns 100 when 1 test is passed" do 
        grammar = GrammarStats.new 
        grammar.check("Hello.")
        result = grammar.percentage_good
        expect(result).to eq 100
    end

    it "returns 50 when 2 tests are passed" do 
        grammar = GrammarStats.new 
        grammar.check("Hello.") #success
        grammar.check("hello.") #fail
        result = grammar.percentage_good
        expect(result).to eq 50 
    end 
end
