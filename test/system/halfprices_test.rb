require "application_system_test_case"

class HalfpricesTest < ApplicationSystemTestCase
  setup do
    @halfprice = halfprices(:one)
  end

  test "visiting the index" do
    visit halfprices_url
    assert_selector "h1", text: "Halfprices"
  end

  test "creating a Halfprice" do
    visit halfprices_url
    click_on "New Halfprice"

    fill_in "Body", with: @halfprice.body
    fill_in "Hfcategory", with: @halfprice.hfcategory_id
    fill_in "Title", with: @halfprice.title
    click_on "Create Halfprice"

    assert_text "Halfprice was successfully created"
    click_on "Back"
  end

  test "updating a Halfprice" do
    visit halfprices_url
    click_on "Edit", match: :first

    fill_in "Body", with: @halfprice.body
    fill_in "Hfcategory", with: @halfprice.hfcategory_id
    fill_in "Title", with: @halfprice.title
    click_on "Update Halfprice"

    assert_text "Halfprice was successfully updated"
    click_on "Back"
  end

  test "destroying a Halfprice" do
    visit halfprices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Halfprice was successfully destroyed"
  end
end
