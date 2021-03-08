require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "should not save order without movie_id" do
    order = Order.new
    assert_not order.save
  end

  test "should not save order without theatre_id" do
    order = Order.new
    assert_not order.save
  end

  test "should not save order without show_time_id" do
    order = Order.new
    assert_not order.save
  end

  test "should not save order without user_id" do
    order = Order.new
    assert_not order.save
  end

  test "should not save order without seats" do
    order = Order.new
    assert_not order.save
  end
end
