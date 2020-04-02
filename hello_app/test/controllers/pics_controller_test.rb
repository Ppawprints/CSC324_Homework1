require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pics_new_url
    assert_response :success
  end

end
