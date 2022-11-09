require "gratitudes"

RSpec.describe Gratitudes do 
  it "returns Be grateful for: " do
    gratitude = Gratitudes.new
    result = gratitude.format
    expect(result).to eq "Be grateful for: "
  end
end
    
