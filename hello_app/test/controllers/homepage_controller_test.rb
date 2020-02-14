require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homepage_home_url
    assert_response :success
    assert_select "title", "Yilan's First Website"
  end

end
