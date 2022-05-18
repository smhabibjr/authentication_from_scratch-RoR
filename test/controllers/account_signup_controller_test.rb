require "test_helper"

class AccountSignupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_signup_index_url
    assert_response :success
  end
end
