require 'test_helper'

class Admin::CommercesControllerTest < ActionController::TestCase
  setup do
    @admin_commerce = admin_commerces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_commerces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_commerce" do
    assert_difference('Admin::Commerce.count') do
      post :create, admin_commerce: { content: @admin_commerce.content }
    end

    assert_redirected_to admin_commerce_path(assigns(:admin_commerce))
  end

  test "should show admin_commerce" do
    get :show, id: @admin_commerce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_commerce
    assert_response :success
  end

  test "should update admin_commerce" do
    patch :update, id: @admin_commerce, admin_commerce: { content: @admin_commerce.content }
    assert_redirected_to admin_commerce_path(assigns(:admin_commerce))
  end

  test "should destroy admin_commerce" do
    assert_difference('Admin::Commerce.count', -1) do
      delete :destroy, id: @admin_commerce
    end

    assert_redirected_to admin_commerces_path
  end
end
