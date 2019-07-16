require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get login_user" do
    get login_login_user_url
    assert_response :success
  end

end
