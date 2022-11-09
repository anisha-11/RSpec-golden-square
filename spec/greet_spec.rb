require "greet"

RSpec.describe "greet method" do 
  it "greet a given user" do 
    result = greet("Anisha")
    expect(result).to eq "Hello, Anisha!"
  end
end