require "minitest/autorun"
require_relative "../lib/bicycle"
require_relative "bicycle_interface_test"

class BicycleTest < Minitest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(RuntimeError, "Implement default_tire_size") {
      @bike.default_tire_size
    }
  end
end
