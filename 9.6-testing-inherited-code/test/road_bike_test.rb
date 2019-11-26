require "minitest/autorun"
require_relative "../lib/road_bike"
require_relative "bicycle_interface_test"
require_relative "bicycle_subclass_test"

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new
  end
end
