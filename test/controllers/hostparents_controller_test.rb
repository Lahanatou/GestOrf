require 'test_helper'

class HostparentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hostparent = hostparents(:one)
  end

  test "should get index" do
    get hostparents_url
    assert_response :success
  end

  test "should get new" do
    get new_hostparent_url
    assert_response :success
  end

  test "should create hostparent" do
    assert_difference('Hostparent.count') do
      post hostparents_url, params: { hostparent: {  } }
    end

    assert_redirected_to hostparent_url(Hostparent.last)
  end

  test "should show hostparent" do
    get hostparent_url(@hostparent)
    assert_response :success
  end

  test "should get edit" do
    get edit_hostparent_url(@hostparent)
    assert_response :success
  end

  test "should update hostparent" do
    patch hostparent_url(@hostparent), params: { hostparent: {  } }
    assert_redirected_to hostparent_url(@hostparent)
  end

  test "should destroy hostparent" do
    assert_difference('Hostparent.count', -1) do
      delete hostparent_url(@hostparent)
    end

    assert_redirected_to hostparents_url
  end
end
