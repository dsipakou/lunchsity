require 'test_helper'

class Admin::AboutusControllerTest < ActionController::TestCase
  setup do
    @admin_aboutu = admin_aboutus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_aboutus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_aboutu" do
    assert_difference('Admin::Aboutu.count') do
      post :create, admin_aboutu: { content: @admin_aboutu.content }
    end

    assert_redirected_to admin_aboutu_path(assigns(:admin_aboutu))
  end

  test "should show admin_aboutu" do
    get :show, id: @admin_aboutu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_aboutu
    assert_response :success
  end

  test "should update admin_aboutu" do
    patch :update, id: @admin_aboutu, admin_aboutu: { content: @admin_aboutu.content }
    assert_redirected_to admin_aboutu_path(assigns(:admin_aboutu))
  end

  test "should destroy admin_aboutu" do
    assert_difference('Admin::Aboutu.count', -1) do
      delete :destroy, id: @admin_aboutu
    end

    assert_redirected_to admin_aboutus_path
  end
end
