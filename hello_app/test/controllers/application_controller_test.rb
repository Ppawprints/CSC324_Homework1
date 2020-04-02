require 'test_helper'
require 'minitest/autorun'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get navbar from home" do
    get root_path
    assert_response :success
    assert_select "header" do
      assert_select "nav" do
        assert_select "ul" do
          assert_select "li", "Home"
          assert_select "li", "Cat Pics Page"
          assert_select "li", "Dog Pics Page"
        end
      end   
    end
  end
  
  test "should get navbar url" do
    get second_path
    assert_response :success
    assert_select "header" do
      assert_select "nav" do
        assert_select "ul" do
          assert_select "a[href=?]", root_path
          assert_select "a[href=?]", second_path
          assert_select "a[href=?]", third_path
        end
      end
    end
  end
end
