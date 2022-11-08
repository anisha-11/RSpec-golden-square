require "counter"

RSpec.describe Counter do
  it "initally reports a zero count" do 
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "adds to the count" do
    counter = Counter.new
    counter.add(5)
    expect(counter.report).to eq "Counted to 5 so far."
  end
end 