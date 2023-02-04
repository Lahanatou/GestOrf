require 'test_helper'

class OriginalparentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @originalparent = originalparents(:one)
  end

  test "should get index" do
    get originalparents_url
    assert_response :success
  end

  test "should get new" do
    get new_originalparent_url
    assert_response :success
  end

  test "should create originalparent" do
    assert_difference('Originalparent.count') do
      post originalparents_url, params: { originalparent: {  } }
    end

    assert_redirected_to originalparent_url(Originalparent.last)
  end

  test "should show originalparent" do
    get originalparent_url(@originalparent)
    assert_response :success
  end

  test "should get edit" do
    get edit_originalparent_url(@originalparent)
    assert_response :success
  end

  test "should update originalparent" do
    patch originalparent_url(@originalparent), params: { originalparent: {  } }
    assert_redirected_to originalparent_url(@originalparent)
  end

  test "should destroy originalparent" do
    assert_difference('Originalparent.count', -1) do
      delete originalparent_url(@originalparent)
    end

    assert_redirected_to originalparents_url
  end
end
