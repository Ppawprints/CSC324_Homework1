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

  test "should get root die value" do
    get root_path
    assert_response :success
    assert (assigns(:result_mixed)) <= 20
    assert (assigns(:result_mixed)) >= 1
  end  

  test "should get second die value" do
    get second_path
    assert_response :success
    assert (assigns(:result_cat)) <= 10
    assert (assigns(:result_cat)) >= 1
  end  

  test "should get third die value" do
    get third_path
    assert_response :success
    assert (assigns(:result_dog)) <= 20
    assert (assigns(:result_dog)) >= 11
  end  
end
