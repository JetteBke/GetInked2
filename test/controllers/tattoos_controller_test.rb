require 'test_helper'

class TattoosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tattoos_index_url
    assert_response :success
  end

  test "should get show" do
    get tattoos_show_url
    assert_response :success
  end

  test "should get new" do
    get tattoos_new_url
    assert_response :success
  end

  test "should get create" do
    get tattoos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tattoos_destroy_url
    assert_response :success
  end

end
