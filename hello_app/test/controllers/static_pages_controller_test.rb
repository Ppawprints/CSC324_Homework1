require 'test_helper'
require 'minitest/autorun'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "AnimalPics"
  end
  
  test "should get second" do
    get second_path
    assert_response :success
    assert_select "title", "Cat Pics Page | AnimalPics"
  end

  test "should get third" do
    get third_path
    assert_response :success
    assert_select "title", "Dog Pics Page | AnimalPics"
  end

  test "should get second die value" do
    get second_path
    assert_response :success
    assert (assigns(:id)) <= 10
    assert (assigns(:id)) >= 1
  end  

  test "should get third die value" do
    get third_path
    assert_response :success
    assert (assigns(:id)) <= 20
    assert (assigns(:id)) >= 11
  end  
end
