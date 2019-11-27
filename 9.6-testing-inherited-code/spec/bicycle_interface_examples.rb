RSpec.configure do |config|
  config.alias_it_behaves_like_to(:it_implements, "implements:")
end

RSpec.shared_examples_for "Bicycle interface" do
  it "responds to default_tire_size" do
    expect(subject).to respond_to(:default_tire_size)
  end

  it "responds to default_chain" do
    expect(subject).to respond_to(:default_chain)
  end

  it "responds to chain" do
    expect(subject).to respond_to(:chain)
  end

  it "responds to size" do
    expect(subject).to respond_to(:size)
  end

  it "responds to spares" do
    expect(subject).to respond_to(:spares)
  end
end
