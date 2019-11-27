RSpec.shared_examples_for "a Bicycle subclass" do
  it "responds to post_initialize" do
    expect(subject).to respond_to(:post_initialize)
  end

  it "responds to local_spares" do
    expect(subject).to respond_to(:local_spares)
  end

  it "responds to default_tire_size" do
    expect(subject).to respond_to(:default_tire_size)
  end
end
