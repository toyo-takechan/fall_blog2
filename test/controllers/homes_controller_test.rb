require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "FallBlog"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "FallBlog  |  about"
  end

  test "should get play" do
    get play_path
    assert_response :success
    assert_select "title", "FallBlog  |  play"
  end

  test "should get practice" do
    get practice_path
    assert_response :success
    assert_select "title", "FallBlog  |  practice"
  end
end
