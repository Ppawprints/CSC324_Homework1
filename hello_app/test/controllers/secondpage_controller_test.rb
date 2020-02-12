require 'test_helper'

class SecondpageControllerTest < ActionDispatch::IntegrationTest
  test "should get second" do
    get secondpage_second_url
    assert_response :success
  end

end
