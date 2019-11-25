require "minitest/autorun"
require_relative "../lib/driver"
require_relative "preparer_interface_test"

class DriverTest < Minitest::Test
  include PreparerInterfaceTest

  def setup
    @driver = @object = Driver.new
  end
end
