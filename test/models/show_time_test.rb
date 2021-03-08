require "test_helper"

class ShowTimeTest < ActiveSupport::TestCase
  test "should not save order without movie_id" do
    st = ShowTime.new
    assert_not st.save
  end

  test "should not save order without theatre_id" do
    st = ShowTime.new
    assert_not st.save
  end
end
