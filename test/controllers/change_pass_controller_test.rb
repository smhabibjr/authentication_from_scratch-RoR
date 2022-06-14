require "test_helper"

class ChangePassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get change_pass_index_url
    assert_response :success
  end
end
