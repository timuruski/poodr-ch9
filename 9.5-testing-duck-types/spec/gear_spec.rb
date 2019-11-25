require "gear"

RSpec.describe Gear do
  it "can calculate gear inches" do
    gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: double("DiameterDouble", diameter: 10))

    expect(gear.gear_inches)
      .to be_within(0.01)
      .of(47.27)
  end
end
