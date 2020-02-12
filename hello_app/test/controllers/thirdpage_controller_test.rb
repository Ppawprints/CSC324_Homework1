require 'test_helper'

class ThirdpageControllerTest < ActionDispatch::IntegrationTest
  test "should get third" do
    get thirdpage_third_url
    assert_response :success
  end

end
