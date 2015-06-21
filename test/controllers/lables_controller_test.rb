require 'test_helper'

class LablesControllerTest < ActionController::TestCase
  setup do
    @lable = lables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lable" do
    assert_difference('Lable.count') do
      post :create, lable: { lablestr: @lable.lablestr }
    end

    assert_redirected_to lable_path(assigns(:lable))
  end

  test "should show lable" do
    get :show, id: @lable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lable
    assert_response :success
  end

  test "should update lable" do
    patch :update, id: @lable, lable: { lablestr: @lable.lablestr }
    assert_redirected_to lable_path(assigns(:lable))
  end

  test "should destroy lable" do
    assert_difference('Lable.count', -1) do
      delete :destroy, id: @lable
    end

    assert_redirected_to lables_path
  end
end
