require "cat_facts"

RSpec.describe CatFacts do 
  it "provides a cat fact" do 
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"The cat has 500 skeletal muscles (humans have 650).","length":51}')
    fact = CatFacts.new(fake_requester)
    expect(fact.provide).to eq "Cat fact: The cat has 500 skeletal muscles (humans have 650)."
  end 
end 
