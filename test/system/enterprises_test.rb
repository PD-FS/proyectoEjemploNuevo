require "application_system_test_case"

class EnterprisesTest < ApplicationSystemTestCase
  setup do
    @enterprise = enterprises(:one)
  end

  test "visiting the index" do
    visit enterprises_url
    assert_selector "h1", text: "Enterprises"
  end

  test "creating a Enterprise" do
    visit enterprises_url
    click_on "New Enterprise"

    fill_in "Address", with: @enterprise.address
    fill_in "Coverpage", with: @enterprise.coverPage
    fill_in "Description", with: @enterprise.description
    fill_in "Enterprise Sector", with: @enterprise.enterprise_sector_id
    fill_in "Facebook", with: @enterprise.facebook_id
    fill_in "Instagram", with: @enterprise.instagram_id
    fill_in "Ispublic", with: @enterprise.isPublic
    fill_in "Latitude", with: @enterprise.latitude
    fill_in "Logo", with: @enterprise.logo
    fill_in "Longitude", with: @enterprise.longitude
    fill_in "Name", with: @enterprise.name
    fill_in "Nit", with: @enterprise.nit
    fill_in "Phone", with: @enterprise.phone
    fill_in "Website", with: @enterprise.website
    click_on "Create Enterprise"

    assert_text "Enterprise was successfully created"
    click_on "Back"
  end

  test "updating a Enterprise" do
    visit enterprises_url
    click_on "Edit", match: :first

    fill_in "Address", with: @enterprise.address
    fill_in "Coverpage", with: @enterprise.coverPage
    fill_in "Description", with: @enterprise.description
    fill_in "Enterprise Sector", with: @enterprise.enterprise_sector_id
    fill_in "Facebook", with: @enterprise.facebook_id
    fill_in "Instagram", with: @enterprise.instagram_id
    fill_in "Ispublic", with: @enterprise.isPublic
    fill_in "Latitude", with: @enterprise.latitude
    fill_in "Logo", with: @enterprise.logo
    fill_in "Longitude", with: @enterprise.longitude
    fill_in "Name", with: @enterprise.name
    fill_in "Nit", with: @enterprise.nit
    fill_in "Phone", with: @enterprise.phone
    fill_in "Website", with: @enterprise.website
    click_on "Update Enterprise"

    assert_text "Enterprise was successfully updated"
    click_on "Back"
  end

  test "destroying a Enterprise" do
    visit enterprises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enterprise was successfully destroyed"
  end
end
