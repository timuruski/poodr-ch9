module PreparerInterfaceTest
  def test_implements_preparer_interface
    assert_respond_to(@object, :prepare_trip)
  end
end
