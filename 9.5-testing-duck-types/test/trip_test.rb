require "minitest/autorun"
require_relative "../lib/trip"

class TripTest < Minitest::Test
  def test_requests_trip_preparation
    preparer = Minitest::Mock.new
    trip = Trip.new([], [], [])

    preparer.expect(:prepare_trip, nil, [trip])

    trip.prepare([preparer])
    preparer.verify
  end
end
