require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_view" do
    get pages_user_view_url
    assert_response :success
  end

end
