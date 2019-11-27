require_relative "../lib/trip"

RSpec.describe Trip do
  it "requests trip preparation" do
    preparer = double("preparer")
    trip = Trip.new([], [], [])

    expect(preparer)
      .to receive(:prepare_trip)
      .with(trip)

    trip.prepare([preparer])
  end
end
