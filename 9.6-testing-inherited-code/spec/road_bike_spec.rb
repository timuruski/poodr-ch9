require_relative "../lib/road_bike"
require_relative "bicycle_interface_examples"
require_relative "bicycle_subclass_examples"

RSpec.describe RoadBike do
  subject { RoadBike.new(tape_color: "red") }

  it_implements "Bicycle interface"
  it_behaves_like "a Bicycle subclass"

  it "puts tape_color in local_spares" do
    expect(subject.local_spares[:tape_color]).to eq("red")
  end
end
