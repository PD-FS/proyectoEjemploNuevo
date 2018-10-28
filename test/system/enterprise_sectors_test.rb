require "application_system_test_case"

class EnterpriseSectorsTest < ApplicationSystemTestCase
  setup do
    @enterprise_sector = enterprise_sectors(:one)
  end

  test "visiting the index" do
    visit enterprise_sectors_url
    assert_selector "h1", text: "Enterprise Sectors"
  end

  test "creating a Enterprise sector" do
    visit enterprise_sectors_url
    click_on "New Enterprise Sector"

    fill_in "Icon", with: @enterprise_sector.icon
    fill_in "Name", with: @enterprise_sector.name
    click_on "Create Enterprise sector"

    assert_text "Enterprise sector was successfully created"
    click_on "Back"
  end

  test "updating a Enterprise sector" do
    visit enterprise_sectors_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @enterprise_sector.icon
    fill_in "Name", with: @enterprise_sector.name
    click_on "Update Enterprise sector"

    assert_text "Enterprise sector was successfully updated"
    click_on "Back"
  end

  test "destroying a Enterprise sector" do
    visit enterprise_sectors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enterprise sector was successfully destroyed"
  end
end
