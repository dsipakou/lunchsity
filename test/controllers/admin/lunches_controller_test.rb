require 'test_helper'

class Admin::LunchesControllerTest < ActionController::TestCase
  setup do
    @admin_lunch = admin_lunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_lunch" do
    assert_difference('Admin::Lunch.count') do
      post :create, admin_lunch: { content: @admin_lunch.content }
    end

    assert_redirected_to admin_lunch_path(assigns(:admin_lunch))
  end

  test "should show admin_lunch" do
    get :show, id: @admin_lunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_lunch
    assert_response :success
  end

  test "should update admin_lunch" do
    patch :update, id: @admin_lunch, admin_lunch: { content: @admin_lunch.content }
    assert_redirected_to admin_lunch_path(assigns(:admin_lunch))
  end

  test "should destroy admin_lunch" do
    assert_difference('Admin::Lunch.count', -1) do
      delete :destroy, id: @admin_lunch
    end

    assert_redirected_to admin_lunches_path
  end
end
