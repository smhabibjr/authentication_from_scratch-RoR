require "test_helper"

class AccountLoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_login_index_url
    assert_response :success
  end
end
