require 'test_helper'

class SecondpageControllerTest < ActionDispatch::IntegrationTest
  test "should get second" do
    get secondpage_second_url
    assert_response :success
    assert_select "title", "Second page | Yilan's First Website"
  end

end
