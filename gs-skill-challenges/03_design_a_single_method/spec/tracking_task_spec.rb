require 'tracking_task'

RSpec.describe "tracking_task method" do
  context "returns true when string contains '#TODO'" do
    it "task is homework" do
      expect(tracking_task("#TODO homework")).to eq true
    end

    it "task is brush teeth" do
      expect(tracking_task("#TODO brush teeth")).to eq true
    end
  end

  it "returns false when string doesn't contain '#TODO'" do
    expect(tracking_task("homework")).to eq false
  end

  it "returns false when string doesn't include the '#'" do
    expect(tracking_task("TODO homework")).to eq false
  end

  it "returns false when lowercase 'todo'" do
    expect(tracking_task("#todo homework")).to eq false
  end
end