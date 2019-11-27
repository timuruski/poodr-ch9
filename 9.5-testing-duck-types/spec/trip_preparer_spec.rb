require_relative "../lib/trip_coordinator"
require_relative "preparer_interface_examples"

RSpec.describe TripCoordinator do
  subject { TripCoordinator.new }

  it_behaves_like "a Trip Preparer"
end
