require "test_helper"

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get register_index_url
    assert_response :success
  end

  test "should get show" do
    get register_show_url
    assert_response :success
  end

  test "should get new" do
    get register_new_url
    assert_response :success
  end

  test "should get create" do
    get register_create_url
    assert_response :success
  end

  test "should get edit" do
    get register_edit_url
    assert_response :success
  end

  test "should get update" do
    get register_update_url
    assert_response :success
  end

  test "should get delete" do
    get register_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get register_destroy_url
    assert_response :success
  end
end
