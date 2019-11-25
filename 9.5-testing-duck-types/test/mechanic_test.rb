require "minitest/autorun"
require_relative "../lib/mechanic"
require_relative "preparer_interface_test"

class MechanicTest < Minitest::Test
  include PreparerInterfaceTest

  def setup
    @mechanic = @object = Mechanic.new
  end
end
