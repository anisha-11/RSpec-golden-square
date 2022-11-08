require "counter"

RSpec.describe Counter do
  it "initally reports a zero count" do 
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
end 