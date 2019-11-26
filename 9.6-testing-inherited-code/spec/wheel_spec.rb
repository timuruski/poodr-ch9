require "wheel"

RSpec.describe Wheel do
  specify "it calculates diameter" do
    wheel = Wheel.new(26, 1.5)

    expect(wheel.diameter)
      .to be_within(0.01)
      .of(29)
  end
end
