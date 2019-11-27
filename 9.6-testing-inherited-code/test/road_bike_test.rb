require "minitest/autorun"
require_relative "../lib/road_bike"
require_relative "bicycle_interface_test"
require_relative "bicycle_subclass_test"

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new(tape_color: "red")
  end

  def test_puts_tape_color_in_local_spares
    assert_equal("red", @bike.local_spares[:tape_color])
  end
end
