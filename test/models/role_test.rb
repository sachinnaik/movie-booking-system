require "test_helper"

class RoleTest < ActiveSupport::TestCase
  test "should not save order without name" do
    role = Role.new
    assert_not role.save
  end
end
