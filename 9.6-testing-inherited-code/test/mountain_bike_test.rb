require "minitest/autorun"
require_relative "../lib/mountain_bike"
require_relative "bicycle_interface_test"
require_relative "bicycle_subclass_test"

class MountainBikeTest < Minitest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = MountainBike.new
  end
end
