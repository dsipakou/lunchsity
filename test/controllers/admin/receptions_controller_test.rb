require 'test_helper'

class Admin::ReceptionsControllerTest < ActionController::TestCase
  setup do
    @admin_reception = admin_receptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_receptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_reception" do
    assert_difference('Admin::Reception.count') do
      post :create, admin_reception: { content: @admin_reception.content }
    end

    assert_redirected_to admin_reception_path(assigns(:admin_reception))
  end

  test "should show admin_reception" do
    get :show, id: @admin_reception
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_reception
    assert_response :success
  end

  test "should update admin_reception" do
    patch :update, id: @admin_reception, admin_reception: { content: @admin_reception.content }
    assert_redirected_to admin_reception_path(assigns(:admin_reception))
  end

  test "should destroy admin_reception" do
    assert_difference('Admin::Reception.count', -1) do
      delete :destroy, id: @admin_reception
    end

    assert_redirected_to admin_receptions_path
  end
end
