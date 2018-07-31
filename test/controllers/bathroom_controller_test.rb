require 'test_helper'

class BathroomControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get bathroom_list_url
    assert_response :success
  end

  test "should get show" do
    get bathroom_show_url
    assert_response :success
  end

  test "should get new" do
    get bathroom_new_url
    assert_response :success
  end

  test "should get create" do
    get bathroom_create_url
    assert_response :success
  end

  test "should get edit" do
    get bathroom_edit_url
    assert_response :success
  end

  test "should get update" do
    get bathroom_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bathroom_destroy_url
    assert_response :success
  end

end
