require 'test_helper'

class EnterpriseSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enterprise_sector = enterprise_sectors(:one)
  end

  test "should get index" do
    get enterprise_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_enterprise_sector_url
    assert_response :success
  end

  test "should create enterprise_sector" do
    assert_difference('EnterpriseSector.count') do
      post enterprise_sectors_url, params: { enterprise_sector: { icon: @enterprise_sector.icon, name: @enterprise_sector.name } }
    end

    assert_redirected_to enterprise_sector_url(EnterpriseSector.last)
  end

  test "should show enterprise_sector" do
    get enterprise_sector_url(@enterprise_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_enterprise_sector_url(@enterprise_sector)
    assert_response :success
  end

  test "should update enterprise_sector" do
    patch enterprise_sector_url(@enterprise_sector), params: { enterprise_sector: { icon: @enterprise_sector.icon, name: @enterprise_sector.name } }
    assert_redirected_to enterprise_sector_url(@enterprise_sector)
  end

  test "should destroy enterprise_sector" do
    assert_difference('EnterpriseSector.count', -1) do
      delete enterprise_sector_url(@enterprise_sector)
    end

    assert_redirected_to enterprise_sectors_url
  end
end
