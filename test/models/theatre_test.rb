require "test_helper"

class TheatreTest < ActiveSupport::TestCase
  test "should not save order without name" do
    theatre = Theatre.new
    assert_not theatre.save
  end
end
