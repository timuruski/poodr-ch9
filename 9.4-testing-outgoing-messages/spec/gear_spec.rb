require_relative "../lib/gear"

RSpec.describe Gear do
  subject(:gear) {
    Gear.new(
      chainring: 52,
      cog: 11,
      wheel: double(diameter: 10),
      observer: observer)
  }

  let(:observer) {
    double("observer")
  }

  it "notifies observers when cogs change" do
    allow(observer).to receive(:changed)

    gear.set_cog(27)

    expect(observer)
      .to have_received(:changed)
      .with(52, 27)
  end

  it "notifies observers when chainrings change" do
    allow(observer).to receive(:changed)

    gear.set_chainring(42)

    expect(observer)
      .to have_received(:changed)
      .with(42, 11)
  end
end
