require 'test_helper'

class PostsPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get posts_pages_form_url
    assert_response :success
  end

  test "should get edit" do
    get posts_pages_edit_url
    assert_response :success
  end

  test "should get index" do
    get posts_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get posts_pages_new_url
    assert_response :success
  end

  test "should get show" do
    get posts_pages_show_url
    assert_response :success
  end

end
