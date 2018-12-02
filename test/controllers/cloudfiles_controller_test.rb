require 'test_helper'

class CloudfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cloudfiles_index_url
    assert_response :success
  end

  test "should get new" do
    get cloudfiles_new_url
    assert_response :success
  end

  test "should get show" do
    get cloudfiles_show_url
    assert_response :success
  end

  test "should get edit" do
    get cloudfiles_edit_url
    assert_response :success
  end

end
