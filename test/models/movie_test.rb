require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should not save movie without name" do
    movie = Movie.new
    assert_not movie.save
  end
end
