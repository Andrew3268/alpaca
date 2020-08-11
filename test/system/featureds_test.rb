require "application_system_test_case"

class FeaturedsTest < ApplicationSystemTestCase
  setup do
    @featured = featureds(:one)
  end

  test "visiting the index" do
    visit featureds_url
    assert_selector "h1", text: "Featureds"
  end

  test "creating a Featured" do
    visit featureds_url
    click_on "New Featured"

    fill_in "Fimage", with: @featured.fimage
    fill_in "Ftitle", with: @featured.ftitle
    fill_in "Furl", with: @featured.furl
    click_on "Create Featured"

    assert_text "Featured was successfully created"
    click_on "Back"
  end

  test "updating a Featured" do
    visit featureds_url
    click_on "Edit", match: :first

    fill_in "Fimage", with: @featured.fimage
    fill_in "Ftitle", with: @featured.ftitle
    fill_in "Furl", with: @featured.furl
    click_on "Update Featured"

    assert_text "Featured was successfully updated"
    click_on "Back"
  end

  test "destroying a Featured" do
    visit featureds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featured was successfully destroyed"
  end
end
