require "minitest/autorun"
require_relative "../lib/trip_coordinator"
require_relative "preparer_interface_test"

class TripCoordinatorTest < Minitest::Test
  include PreparerInterfaceTest

  def setup
    @trip_coordinator = @object = TripCoordinator.new
  end
end
