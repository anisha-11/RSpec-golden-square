require 'reading_time'

RSpec.describe "reading_time method" do
  it "returns 2 minutes when input 400 words" do
    arr = []
    400.times {arr.push("one")}
    text = arr.join(" ")
    expect(reading_time(text)).to eq "2.0 minutes"
  end

  it "returns 2.5 minutes when input is 500 words" do
    arr = []
    500.times {arr.push("one")}
    text = arr.join(" ")
    expect(reading_time(text)).to eq "2.5 minutes"
  end
end