require "application_system_test_case"

class BloodTypesTest < ApplicationSystemTestCase
  setup do
    @blood_type = blood_types(:one)
  end

  test "visiting the index" do
    visit blood_types_url
    assert_selector "h1", text: "Blood Types"
  end

  test "creating a Blood type" do
    visit blood_types_url
    click_on "New Blood Type"

    fill_in "Group", with: @blood_type.group
    fill_in "Hashiv", with: @blood_type.hasHIV
    fill_in "Rh", with: @blood_type.rh
    click_on "Create Blood type"

    assert_text "Blood type was successfully created"
    click_on "Back"
  end

  test "updating a Blood type" do
    visit blood_types_url
    click_on "Edit", match: :first

    fill_in "Group", with: @blood_type.group
    fill_in "Hashiv", with: @blood_type.hasHIV
    fill_in "Rh", with: @blood_type.rh
    click_on "Update Blood type"

    assert_text "Blood type was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood type" do
    visit blood_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood type was successfully destroyed"
  end
end
