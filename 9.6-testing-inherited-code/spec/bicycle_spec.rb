require_relative "../lib/bicycle"
require_relative "bicycle_interface_examples"

RSpec.describe Bicycle do
  subject { Bicycle.new({tire_size: 0}) }

  it_implements "Bicycle interface"

  it "forces subclasses to implement default_tire_size" do
    expect { subject.default_tire_size }
      .to raise_error("Implement default_tire_size")
  end
end
