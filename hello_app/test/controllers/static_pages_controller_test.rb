require 'test_helper'
require 'minitest/autorun'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Yilan's First Website"
  end
  
  test "should get second" do
    get second_path
    assert_response :success
    assert_select "title", "Second Page | Yilan's First Website"
  end

  test "should get third" do
    get third_path
    assert_response :success
    assert_select "title", "Third Page | Yilan's First Website"
  end

  test "should get die value" do
    get root_path
    assert_response :success
    assert (assigns(:result)) <= 6
    assert (assigns(:result)) >= 1
  end  
end
