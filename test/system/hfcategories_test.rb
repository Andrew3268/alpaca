require "application_system_test_case"

class HfcategoriesTest < ApplicationSystemTestCase
  setup do
    @hfcategory = hfcategories(:one)
  end

  test "visiting the index" do
    visit hfcategories_url
    assert_selector "h1", text: "Hfcategories"
  end

  test "creating a Hfcategory" do
    visit hfcategories_url
    click_on "New Hfcategory"

    fill_in "Description", with: @hfcategory.description
    check "Display in navbar" if @hfcategory.display_in_navbar
    fill_in "Name", with: @hfcategory.name
    click_on "Create Hfcategory"

    assert_text "Hfcategory was successfully created"
    click_on "Back"
  end

  test "updating a Hfcategory" do
    visit hfcategories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hfcategory.description
    check "Display in navbar" if @hfcategory.display_in_navbar
    fill_in "Name", with: @hfcategory.name
    click_on "Update Hfcategory"

    assert_text "Hfcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Hfcategory" do
    visit hfcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hfcategory was successfully destroyed"
  end
end
