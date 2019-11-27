require_relative "../lib/mechanic"
require_relative "preparer_interface_examples"

RSpec.describe Mechanic do
  subject { Mechanic.new }

  it_behaves_like "a Trip Preparer"
end
