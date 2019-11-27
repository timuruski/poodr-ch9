RSpec.shared_examples_for "a Trip Preparer" do
  it "implements the prepare_trip method" do
    expect(subject).to respond_to(:prepare_trip)
  end
end
