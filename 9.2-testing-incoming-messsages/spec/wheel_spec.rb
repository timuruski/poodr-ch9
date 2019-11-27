require_relative "../lib/wheel"

RSpec.describe Wheel do
  subject(:wheel) { Wheel.new(26, 1.5) }

  it "implements the diameterizable interface" do
    expect(wheel).to respond_to(:diameter)
  end

  specify "it calculates diameter" do
    expect(wheel.diameter)
      .to be_within(0.01)
      .of(29)
  end
end
