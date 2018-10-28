require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, birthday: @user.birthday, blood_type_id: @user.blood_type_id, cellphone: @user.cellphone, civicoins: @user.civicoins, documentNumber: @user.documentNumber, document_type_id: @user.document_type_id, email: @user.email, gender_id: @user.gender_id, lastname: @user.lastname, name: @user.name, nationality: @user.nationality, password: @user.password, phone: @user.phone, pictureLarge: @user.pictureLarge, pictureMedium: @user.pictureMedium, pictureThumbnail: @user.pictureThumbnail, secondaryNationality: @user.secondaryNationality } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, birthday: @user.birthday, blood_type_id: @user.blood_type_id, cellphone: @user.cellphone, civicoins: @user.civicoins, documentNumber: @user.documentNumber, document_type_id: @user.document_type_id, email: @user.email, gender_id: @user.gender_id, lastname: @user.lastname, name: @user.name, nationality: @user.nationality, password: @user.password, phone: @user.phone, pictureLarge: @user.pictureLarge, pictureMedium: @user.pictureMedium, pictureThumbnail: @user.pictureThumbnail, secondaryNationality: @user.secondaryNationality } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
