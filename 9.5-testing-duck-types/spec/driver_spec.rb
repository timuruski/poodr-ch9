require_relative "../lib/driver"
require_relative "preparer_interface_examples"

RSpec.describe Driver do
  subject { Driver.new }

  it_behaves_like "a Trip Preparer"
end
