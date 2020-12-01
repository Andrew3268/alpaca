require 'test_helper'

class HalfpricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @halfprice = halfprices(:one)
  end

  test "should get index" do
    get halfprices_url
    assert_response :success
  end

  test "should get new" do
    get new_halfprice_url
    assert_response :success
  end

  test "should create halfprice" do
    assert_difference('Halfprice.count') do
      post halfprices_url, params: { halfprice: { body: @halfprice.body, hfcategory_id: @halfprice.hfcategory_id, title: @halfprice.title } }
    end

    assert_redirected_to halfprice_url(Halfprice.last)
  end

  test "should show halfprice" do
    get halfprice_url(@halfprice)
    assert_response :success
  end

  test "should get edit" do
    get edit_halfprice_url(@halfprice)
    assert_response :success
  end

  test "should update halfprice" do
    patch halfprice_url(@halfprice), params: { halfprice: { body: @halfprice.body, hfcategory_id: @halfprice.hfcategory_id, title: @halfprice.title } }
    assert_redirected_to halfprice_url(@halfprice)
  end

  test "should destroy halfprice" do
    assert_difference('Halfprice.count', -1) do
      delete halfprice_url(@halfprice)
    end

    assert_redirected_to halfprices_url
  end
end
