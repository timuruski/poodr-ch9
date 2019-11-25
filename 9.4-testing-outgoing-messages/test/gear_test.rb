require "minitest/autorun"
require_relative "../lib/gear"

class DiameterDouble
  def diameter
    10
  end
end

class GearTest < Minitest::Test
  def setup
    @observer = Minitest::Mock.new
    @gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: DiameterDouble.new,
      observer: @observer)
  end

  def test_notifies_observers_when_cogs_change
    @observer.expect(:changed, true, [52, 27])
    @gear.set_cog(27)
    @observer.verify
  end

  def test_notifies_observers_when_chainrings_change
    @observer.expect(:changed, true, [42, 11])
    @gear.set_chainring(42)
    @observer.verify
  end
end
