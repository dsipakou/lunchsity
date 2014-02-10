require 'test_helper'

class Admin::PhonesControllerTest < ActionController::TestCase
  setup do
    @admin_phone = admin_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_phone" do
    assert_difference('Admin::Phone.count') do
      post :create, admin_phone: { number: @admin_phone.number, operator: @admin_phone.operator, phonetype: @admin_phone.phonetype }
    end

    assert_redirected_to admin_phone_path(assigns(:admin_phone))
  end

  test "should show admin_phone" do
    get :show, id: @admin_phone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_phone
    assert_response :success
  end

  test "should update admin_phone" do
    patch :update, id: @admin_phone, admin_phone: { number: @admin_phone.number, operator: @admin_phone.operator, phonetype: @admin_phone.phonetype }
    assert_redirected_to admin_phone_path(assigns(:admin_phone))
  end

  test "should destroy admin_phone" do
    assert_difference('Admin::Phone.count', -1) do
      delete :destroy, id: @admin_phone
    end

    assert_redirected_to admin_phones_path
  end
end
