require_relative "../lib/gear"

class DiameterDouble
  def diameter
    10
  end
end

RSpec.describe Gear do
  it "can calculate gear inches (with RSpec double)" do
    gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: double("DiameterDouble", diameter: 10))

    expect(gear.gear_inches)
      .to be_within(0.01)
      .of(47.27)
  end

  it "can calculate gear inches (with class double)" do
    gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: DiameterDouble.new)

    expect(gear.gear_inches)
      .to be_within(0.01)
      .of(47.27)
  end
end
