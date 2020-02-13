require 'test_helper'

class ThirdpageControllerTest < ActionDispatch::IntegrationTest
  test "should get third" do
    get thirdpage_third_url
    assert_response :success
    assert_select "title", "Third Page | Yilan's First Website"
  end

end
