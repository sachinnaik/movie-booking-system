require "test_helper"

class ShowTimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_times_index_url
    assert_response :success
  end
end
