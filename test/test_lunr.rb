require "helper"

class TestLunr < Test::Unit::TestCase
  context "A Lunr test" do
    setup do
      FakeWeb.clean_registry
    end
    should "be so true" do
      assert true
    end
  end
end
