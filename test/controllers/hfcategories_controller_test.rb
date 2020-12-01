require 'test_helper'

class HfcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hfcategory = hfcategories(:one)
  end

  test "should get index" do
    get hfcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_hfcategory_url
    assert_response :success
  end

  test "should create hfcategory" do
    assert_difference('Hfcategory.count') do
      post hfcategories_url, params: { hfcategory: { description: @hfcategory.description, display_in_navbar: @hfcategory.display_in_navbar, name: @hfcategory.name } }
    end

    assert_redirected_to hfcategory_url(Hfcategory.last)
  end

  test "should show hfcategory" do
    get hfcategory_url(@hfcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_hfcategory_url(@hfcategory)
    assert_response :success
  end

  test "should update hfcategory" do
    patch hfcategory_url(@hfcategory), params: { hfcategory: { description: @hfcategory.description, display_in_navbar: @hfcategory.display_in_navbar, name: @hfcategory.name } }
    assert_redirected_to hfcategory_url(@hfcategory)
  end

  test "should destroy hfcategory" do
    assert_difference('Hfcategory.count', -1) do
      delete hfcategory_url(@hfcategory)
    end

    assert_redirected_to hfcategories_url
  end
end
